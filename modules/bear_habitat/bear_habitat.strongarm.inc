<?php
/**
 * @file
 * bear_habitat.strongarm.inc
 */

/**
 * Implements hook_strongarm().
 */
function bear_habitat_strongarm() {
  $export = array();

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_disable_dev';
  $strongarm->value = array(
    0 => 'bear_habitat_prod',
  );
  $export['habitat_disable_dev'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_disable_local';
  $strongarm->value = array(
    0 => 'overlay',
    1 => 'bear_habitat_prod',
  );
  $export['habitat_disable_local'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_disable_prod';
  $strongarm->value = array(
    0 => 'habitat_ui',
    1 => 'field_ui',
    2 => 'devel',
    3 => 'views_ui',
    4 => 'bear_habitat_local',
  );
  $export['habitat_disable_prod'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_disable_test';
  $strongarm->value = array(
    0 => 'habitat_ui',
    1 => 'field_ui',
    2 => 'devel',
    3 => 'views_ui',
    4 => 'bear_habitat_local',
  );
  $export['habitat_disable_test'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_enable_dev';
  $strongarm->value = array(
    0 => '',
  );
  $export['habitat_enable_dev'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_enable_local';
  $strongarm->value = array(
    0 => 'habitat_ui',
    1 => 'field_ui',
    2 => 'devel',
    3 => 'views_ui',
    4 => 'bear_habitat_local',
  );
  $export['habitat_enable_local'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_enable_prod';
  $strongarm->value = array(
    0 => 'bear_habitat_prod',
  );
  $export['habitat_enable_prod'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_enable_test';
  $strongarm->value = array(
    0 => 'bear_habitat_prod',
  );
  $export['habitat_enable_test'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_habitats';
  $strongarm->value = array(
    0 => 'prod',
    1 => 'test',
    2 => 'dev',
    3 => 'local',
  );
  $export['habitat_habitats'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'habitat_variable';
  $strongarm->value = 'fetcher_environment';
  $export['habitat_variable'] = $strongarm;

  return $export;
}
