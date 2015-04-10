<?php

#use Behat\Behat\Context\Context;
#use Behat\Behat\Context\BehatContext;
#use Behat\Behat\Context\SnippetAcceptingContext;
#use Behat\Gherkin\Node\PyStringNode;
#use Behat\Gherkin\Node\TableNode;
#use Behat\Mink\Mink;
#use Drupal\Component\Utility\Random;

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Event\ScenarioEvent,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;
use Drupal\DrupalExtension\Context\DrupalContext;
use Drupal\Component\Utility\Random;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends DrupalContext {

 /**
   * An array of Behat Context objects.
   *
   * An array of other contexts that this class delegates to in the event
   * a non-existent method is called on this class.  It's the poor man's traits.
   */
  public $subcontexts = array();
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct() {
      #$this->localConf = $this->getConfig();   
    }


  #public function getConfig() {
  #  if (!file_exists('local-config.yaml')) {
  #    throw new Exception('Please create a local-config.yaml.  See example.local-config.yaml for structure.');
  #  }
  #  return Yaml::parse('local-config.yaml');
  #}

  
  /**
   * Override MinkContext::fixStepArgument().
   *
   * Make it possible to use [random].
   * If you want to use the previous random value [random:1].
   * Also, allow newlines in arguments.
   */
  public function fixStepArgument($argument) {
    // Token replace the argument.
    static $random = array();
    for ($start = 0; ($start = strpos($argument, '[', $start)) !== FALSE; ) {
      $end = strpos($argument, ']', $start);
      if ($end === FALSE) {
        break;
      }
      $random_generator = new Random;
      $name = substr($argument, $start + 1, $end - $start - 1);
      if ($name == 'random') {
        $this->vars[$name] = $random_generator->name(8);
        $random[] = $this->vars[$name];
      }
      // In order to test previous random values stored in the form,
      // suppport random:n, where n is the number or random's ago
      // to use, i.e., random:1 is the previous random value.
      elseif (substr($name, 0, 7) == 'random:') {
        $num = substr($name, 7);
        if (is_numeric($num) && $num <= count($random)) {
          $this->vars[$name] = $random[count($random) - $num];
        }
      }
      if (isset($this->vars[$name])) {
        $argument = substr_replace($argument, $this->vars[$name], $start, $end - $start + 1);
        $start += strlen($this->vars[$name]);
      }
      else {
        $start = $end + 1;
      }
    }
    return $argument;
  }

  /**
   * @Transform /\[.*\](?:.*)/
   */
  public function transformLocalConf($argument) {
    // Token replace the argument.

    preg_match('/\[(.*)\]/', $argument, $matches);
    $token = $matches[1];


    if (isset($this->localConf[$token])) {
      // throw new \Exception(sprintf('Argument %s and token %s and result %s', $argument, $token, str_replace('[' . $token . ']', $this->localConf[$token], $argument)));
      return str_replace('[' . $token . ']', $this->localConf[$token], $argument);
    }
  }

  /**
   * @Given /^I switch to the iframe "([^"]*)"$/
   *
   * Drupal Media Module 7.x-1.3
   */
  public function switchToIFrame($name) {
    if ($name) {
      $this->getMainContext()->getSession()->switchToIFrame($name);
    } else {
      $this->getMainContect()->getSession()->switchToIFrame();
    }
  }

  /**
   * @Given /^I enter the media upload window$/
   * @When I enter the iframe
   */
  public function iEnterTheIframe($arg1 = 'mediaBrowser') {
    $this->getSession()->switchToIFrame($arg1);
  }

  /**
   * @Given /^I leave the iframe$/
   */
  public function iLeaveTheIframe() {
    $this->getSession()->switchToIFrame();
    $this->getSession()->wait(3000, 'false');
  }

  /**
   * @When I choose an image
   * @When I choose a video
   */
  public function iChooseAnImage() {
    $this->getSession()
      ->getPage()
      ->find("css", "#media-browser-library-list li img")
      ->click();
    $this->getSession()->wait(3000, 'false');
  }

  /**
   * @When I choose an image from WYSIWYG media 
   * @When I choose a video from WYSIWYG media 
   */
  public function iChooseAnImageFromWYSIWYGMedia() {
    $this->getSession()->getDriver()
      ->find("xpath", "//ul[@id='media-browser-library-list']/li/img")
      ->click();
  }


  /**
   * @Given /^I click the fake "([^"]*)" button$/
   */
  public function iClickTheFakeButton($text) {
    // Media style selector "buttons" are A tags with no href, so not findable
    // by normal steps.
    $driver = $this->getSession()->getDriver();
    $buttons = $driver->find("//a[text()='$text']");
    $buttons[0]->click();
  }

  /**
   * @When /^I should see the "([^"]*)" image$/
   */
  public function iShouldSeeTheImage($file) {
    $escapedValue = $this->getSession()->getSelectorsHandler()->xpathLiteral($file);
    $image = $this->getSession()->getPage()->find('named', array('link', $escapedValue));
    if(!$image){
        throw new \Exception(sprintf('Image "%s" was not found on the page %s', $file, $this->getSession()->getCurrentUrl()));
    }
  }

  /**
   * @When /^I should see the "([^"]*)" video$/
   */
  public function iShouldSeeTheVideo($file) {
    $video = $this->getSession()->getPage()->find('xpath', '//iframe[title="{$file}]"');
    if(!$video){
        throw new \Exception(sprintf('Image "%s" was not found on the page %s', $file, $this->getSession()->getCurrentUrl()));
    }
  }

  /**
   * @When I pause
   */
  public function iPause() {
    // Useful in js tests only.
    // For when you need to let drupal catch up.
    $this->getSession()->wait(3000, 'false');
  }  
//***
 /*** Panopoly WYSIWYG Custom Steps
 ****
 ****

  /**
   * Get the instance variable to use in Javascript.
   *
   * @param string $instanceId
   *   The instanceId used by the WYSIWYG module to identify the instance.
   *
   * @throws Exeception
   *   Throws an exception if the editor doesn't exist.
   *
   * @return string
   *   A Javascript expression representing the WYSIWYG instance.
   */
  protected function getWysiwygInstance($instanceId) {
    $instance = "Drupal.wysiwyg.instances['$instanceId']";

    if (!$this->getSession()->evaluateScript("return !!$instance")) {
      throw new \Exception(sprintf('The editor "%s" was not found on the page %s', $instanceId, $this->getSession()->getCurrentUrl()));
    }

    return $instance;
  }

  /**
   * Get a Mink Element representing the WYSIWYG toolbar.
   *
   * Altered for CKEditor
   *
   * @param string $instanceId
   *   The instanceId used by the WYSIWYG module to identify the instance.
   * @param string $editorType
   *   Identifies the underlying editor (for example, "tinymce").
   *
   * @throws Exeception
   *   Throws an exception if the toolbar can't be found.
   *
   * @return \Behat\Mink\Element\NodeElement
   *   The toolbar DOM Node.
   */
  protected function getWysiwygToolbar($instanceId/*, $editorType*/) {
    $driver = $this->getSession()->getPage();

    // TODO: This is tinyMCE specific. We should probably do a switch statement
    // based on $editorType.
    $wysiwyg = $driver->find("xpath", "//div[@id='cke_{$instanceId}']");
    if ($wysiwyg === NULL){
      throw new \Exception(sprintf('The wysiwyg "%s" was not found on the page', $instanceId));
    }
    $toolbarElement = $wysiwyg->find("xpath", "//span[@class='cke_toolbar']"); 
    if ($toolbarElement === NULL) {
      throw new \Exception(sprintf('Toolbar for editor "%s" was not found on the page %s', $instanceId, $this->getSession()->getCurrentUrl()));
    }

    return $toolbarElement;
  }

  /**
   * @When /^I type "([^"]*)" in the "([^"]*)" WYSIWYG editor$/
   */
  public function iTypeInTheWysiwygEditor($text, $instanceId) {
    $instance = $this->getWysiwygInstance($instanceId);
    $this->getSession()->executeScript("$instance.insert(\"$text\");");
  }

  /**
   * @When /^I fill in the "([^"]*)" WYSIWYG editor with "([^"]*)"$/
   */
  public function iFillInTheWysiwygEditor($instanceId, $text) {
    $instance = $this->getWysiwygInstance($instanceId);
    $this->getSession()->executeScript("$instance.setContent(\"$text\");");
  }

  /**
   * @When /^I click the "([^"]*)" button in the "([^"]*)" WYSIWYG editor$/
   */
  public function iClickTheButtonInTheWysiwygEditor($action, $instanceId) {
    $driver = $this->getSession()->getDriver();
    $instance = $this->getWysiwygInstance($instanceId);
    $toolbarElement = $this->getWysiwygToolbar($instanceId/*, $editorType*/);

    // Click the action button.
    $button = $toolbarElement->find("xpath", "//span[@class='cke_toolgroup']/a[@title='{$action}']");
    if (!$button) {
      throw new \Exception(sprintf('Button "%s" was not found on the page %s', $action, $this->getSession()->getCurrentUrl()));
    }
    $button->click();
    $driver->wait(1000, TRUE);
  }

  #/**
  # * @When /^I click the "([^"]*)" element in the "([^"]*)" WYSIWYG editor$/
  # */
  #public function iClickTheElementInTheWysiwygEditor($cssSelector, $instanceId) {
  #  $instance = $this->getWysiwygInstance($instanceId);
  #  $editorType = $this->getSession()->evaluateScript("return $instance.editor");

  #  // TODO: This is tinyMCE specific. We should probably do a switch statement
  #  // based on $editorType.
  #  $editor_iframe_id = $instanceId . '_ifr';

  #  // This Javascript only works on Chrome - not Firefox.
  #  $javascript  = "jQuery('#{$editor_iframe_id}').each(function() {";
  #  $javascript .= "  jQuery('{$cssSelector}', this.contentWindow.document || this.contentDocument).click();";
  #  $javascript .= "});";

  #  $this->getSession()->executeScript($javascript);
  #}

  /**
   * @When /^I expand the toolbar in the "([^"]*)" WYSIWYG editor$/
   */
  public function iExpandTheToolbarInTheWysiwygEditor($instanceId) {
    $driver = $this->getSession()->getDriver();

    $instance = $this->getWysiwygInstance($instanceId);
    $editorType = $this->getSession()->evaluateScript("return $instance.editor");
    $toolbarElement = $this->getWysiwygToolbar($instanceId, $editorType);

    // TODO: This is tinyMCE specific. We should probably switch on
    // $editorType.
    $action = 'Show/hide toolbars';

    // Expand wysiwyg toolbar.
    $button = $toolbarElement->find("xpath", "//a[starts-with(@title, '$action')]");
    if (!$button) {
      throw new \Exception(sprintf('Button "%s" was not found on the page %s', $action, $this->getSession()->getCurrentUrl()));
    }
    if (strpos($button->getAttribute('class'), 'mceButtonActive') !== FALSE) {
      $button->click();
    }
  }

  /**
   * @Then /^I should see "([^"]*)" in the "([^"]*)" WYSIWYG editor$/
   */
  public function assertContentInWysiwygEditor($text, $tag, $region) {
    $instance = $this->getWysiwygInstance($instanceId);
    $content = $this->evaluateScript("return $instance.getContent()");
    if (strpos($text, $content) === FALSE) {
      throw new \Exception(sprintf('The text "%s" was not found in the "%s" WYSWIYG editor on the page %s', $text, $instanceId, $this->getSession()->getCurrentUrl()));
    }
  }

  /**
   * @Then /^I should not see "([^"]*)" in the "([^"]*)" WYSIWYG editor$/
   */
  public function assertContentNotInWysiwygEditor($text, $tag, $region) {
    $instance = $this->getWysiwygInstance($instanceId);
    $content = $this->evaluateScript("return $instance.getContent()");
    if (strpos($text, $content) !== FALSE) {
      throw new \Exception(sprintf('The text "%s" was found in the "%s" WYSWIYG editor on the page %s', $text, $instanceId, $this->getSession()->getCurrentUrl()));
    }
  }

}