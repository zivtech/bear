<?php
/**
 * @file
 * bear_inhabitants.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function bear_inhabitants_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}
