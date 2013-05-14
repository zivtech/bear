<?php
/**
 * @file
 * bear_inhabitants.features.user_role.inc
 */

/**
 * Implements hook_user_default_roles().
 */
function bear_inhabitants_user_default_roles() {
  $roles = array();

  // Exported role: editor.
  $roles['editor'] = array(
    'name' => 'editor',
    'weight' => 2,
  );

  return $roles;
}
