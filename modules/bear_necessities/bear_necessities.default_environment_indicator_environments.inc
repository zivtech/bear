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
  $environment->machine = 'dev_environment';
  $environment->name = 'Dev environment';
  $environment->regexurl = '.*dev.*';
  $environment->settings = array(
    'color' => '#f65e05',
    'text_color' => '#ffffff',
    'weight' => '95',
    'position' => 'top',
    'fixed' => 1,
  );
  $export['dev_environment'] = $environment;

  $environment = new stdClass();
  $environment->disabled = FALSE; /* Edit this to true to make a default environment disabled initially */
  $environment->api_version = 1;
  $environment->machine = 'live_environment';
  $environment->name = 'Live environment';
  $environment->regexurl = '.*\.com';
  $environment->settings = array(
    'color' => '#29a41a',
    'text_color' => '#ffffff',
    'weight' => '99',
    'position' => 'top',
    'fixed' => 1,
  );
  $export['live_environment'] = $environment;

  $environment = new stdClass();
  $environment->disabled = FALSE; /* Edit this to true to make a default environment disabled initially */
  $environment->api_version = 1;
  $environment->machine = 'local_environment';
  $environment->name = 'Local environment';
  $environment->regexurl = '.*\.local';
  $environment->settings = array(
    'color' => '#aa3333',
    'text_color' => '#ffffff',
    'weight' => '95',
    'position' => 'top',
    'fixed' => 1,
  );
  $export['local_environment'] = $environment;

  $environment = new stdClass();
  $environment->disabled = FALSE; /* Edit this to true to make a default environment disabled initially */
  $environment->api_version = 1;
  $environment->machine = 'staging_environment';
  $environment->name = 'Staging environment';
  $environment->regexurl = '.*stg.*';
  $environment->settings = array(
    'color' => '#a79b1c',
    'text_color' => '#ffffff',
    'weight' => '95',
    'position' => 'top',
    'fixed' => 1,
  );
  $export['staging_environment'] = $environment;

  return $export;
}
