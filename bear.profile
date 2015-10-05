<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function bear_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form["site_information"]["site_name"]["#default_value"] = $_SERVER["SERVER_NAME"];
}

/**
 * Implements hook_js_alter().
 *
 * Remove semantic_ui when the jQuery isn't at least 1.8.
 * @todo: This would be better suited in the semantic_ui module and we should
 *        investigate what needs to be done for that to happen.
 */
function bear_js_alter(&$javascript) {
  if  (_bear_should_unload_semantic_ui()) {
    _bear_unload_semantic_ui($javascript, 'js');
  }
}

/**
 * Implements hook_css_alter().
 *
 * Remove semantic_ui when the jQuery isn't at least 1.8.
 */
function bear_css_alter(&$css) {
  if  (_bear_should_unload_semantic_ui()) {
    _bear_unload_semantic_ui($css, 'css');
  }
}

/**
 * Determine if we should unload semantic_ui because of jQuery incompatibility.
 *
 * @return boolean
 *   Returns TRUE if the semantic_ui should be unloaded and FALSE otherwise.
 */
function _bear_should_unload_semantic_ui() {
  $jquery_version = variable_get('jquery_update_jquery_version', '1.10');

  if (path_is_admin(current_path()) && $admin_version = variable_get('jquery_update_jquery_admin_version', '')) {
    if (!empty($admin_version)) {
      $jquery_version = $admin_version;
    }
  }


  return (current_path() !== 'admin/help/semantic_ui_api' && (boolean) version_compare($jquery_version, '1.8'));
}

/**
 * Unload the semantic JS/CSS given an array of files and the file type we
 * want to remove.
 *
 * @param array $files
 *   The array of files passed by reference to remove the semantic ui files from
 *   as supplied by HOOK_js_alter() or HOOK_css_alter().
 *
 * @return void.
 */
function _bear_unload_semantic_ui(&$files, $ft) {
  $semantic_ui = libraries_info('semantic_ui');
  $libraries_path = libraries_get_path('semantic_ui');

  if (!empty($semantic_ui['files'][$ft])) {
    foreach ($semantic_ui['files'][$ft] as $file_name => $settings) {
      if (isset($files["$libraries_path/$file_name"])) {
        unset($files["$libraries_path/$file_name"]);
      }
    }
  }
}
