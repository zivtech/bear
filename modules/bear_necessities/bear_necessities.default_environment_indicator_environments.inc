<?php
/**
 * @file
 * bear_necessities.default_environment_indicator_environments.inc
 */

/**
 * Implements hook_default_environment_indicator_environment().
 */
function bear_necessities_default_environment_indicator_environment() {
  $export = array();

  $environment = new stdClass();
  $environment->disabled = FALSE; /* Edit this to true to make a default environment disabled initially */
  $environment->api_version = 1;
  $environment->machine = 'development';
  $environment->name = 'Development';
  $environment->regexurl = '.dev.*.com';
  $environment->settings = array(
    'color' => '#d0d0d0',
    'text_color' => '#fff615',
    'weight' => '',
    'position' => 'top',
    'fixed' => 1,
  );
  $export['development'] = $environment;

  $environment = new stdClass();
  $environment->disabled = FALSE; /* Edit this to true to make a default environment disabled initially */
  $environment->api_version = 1;
  $environment->machine = 'live';
  $environment->name = 'Live';
  $environment->regexurl = '.*.com';
  $environment->settings = array(
    'color' => '#d0d0d0',
    'text_color' => '#ffffff',
    'weight' => '',
    'position' => 'top',
    'fixed' => 1,
  );
  $export['live'] = $environment;

  $environment = new stdClass();
  $environment->disabled = FALSE; /* Edit this to true to make a default environment disabled initially */
  $environment->api_version = 1;
  $environment->machine = 'localhost';
  $environment->name = 'Localhost';
  $environment->regexurl = '.local';
  $environment->settings = array(
    'color' => '#d0d0d0',
    'text_color' => '#ffffff',
    'weight' => '',
    'position' => 'top',
    'fixed' => 1,
  );
  $export['localhost'] = $environment;

  return $export;
}
