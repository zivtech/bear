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
use Behat\Behat\Event\FeatureEvent;
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\MinkExtension\Context\MinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

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
   * @AfterScenario @deleteTestField
   */
  public function deleteTestField() {
    $driver = $this->getSession()->getDriver();
    $driver->visit("/admin/structure/types/manage/page/fields/field_test/delete");
    $this->getSession()->getPage()->pressButton("Delete");
  }

  /**
   * Checks that a specific radio button is checked, must use radio button's id.
   *
   * @Then /^the "([^"]*)" radio should be checked$/
   */
  public function theRadioShouldBeChecked($arg1) {
    $elementByCss = $this->getSession()->getPage()->find('css', 'input[type="radio"]:checked#'.$arg1);
    if (!$elementByCss) {
        throw new Exception('Radio button with id ' . $arg1.' is not checked');
    }
  }

}
