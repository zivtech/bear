<?php
/**
 * @file
 * bear_necessities.variable.inc
 */

/**
 * Implements hook_variable_realm_default_variables().
 */
function bear_necessities_variable_realm_default_variables() {
$realm_variables = array();
  $realm_variables['environment']['development'] = array();
  $realm_variables['environment']['live'] = array();
  $realm_variables['environment']['localhost'] = array();
  $realm_variables['global']['default'] = array(
  'admin_theme' => 'seven',
  'breadcrumbs_by_path_core_paths' => 'admin/*
node/*
user/*',
  'breadcrumbs_by_path_current_title' => 1,
  'breadcrumbs_by_path_exclude_paths' => '<front>',
  'cache' => 0,
  'clean_url' => TRUE,
  'comment_page' => 0,
  'cron_key' => 'NYw2kkfDs_z8S0NOpcMqO8zeeQB1Mv7dc0AVqqE4TMs',
  'cron_last' => 1417543002,
  'css_js_query_string' => 'nfyvs9',
  'ctools_last_cron' => 1417543003,
  'date_api_version' => 7.2,
  'date_default_timezone' => 'UTC',
  'date_format_long' => 'l, F j, Y - g:ia',
  'date_format_medium' => 'F j, Y - g:ia',
  'date_format_short' => 'm/d/Y - g:ia',
  'default_environment_indicator_environment' => array(
    'default_environment' => TRUE,
  ),
  'drupal_private_key' => 'LwBum8rbVl3HfTQCKjobmQWka0Kd-5gmu-e1C3_Onus',
  'entitycache_enabled' => TRUE,
  'entityreference:base-tables' => array(
    'comment' => array(
      0 => 'comment',
      1 => 'cid',
    ),
    'node' => array(
      0 => 'node',
      1 => 'nid',
    ),
    'redirect' => array(
      0 => 'redirect',
      1 => 'rid',
    ),
    'file' => array(
      0 => 'file_managed',
      1 => 'fid',
    ),
    'taxonomy_term' => array(
      0 => 'taxonomy_term_data',
      1 => 'tid',
    ),
    'taxonomy_vocabulary' => array(
      0 => 'taxonomy_vocabulary',
      1 => 'vid',
    ),
    'user' => array(
      0 => 'users',
      1 => 'uid',
    ),
    'wysiwyg_profile' => array(
      0 => 'wysiwyg',
      1 => 'format',
    ),
  ),
  'entity_cache_tables_created' => NULL,
  'error_level' => 2,
  'features_codecache' => array(
    'bear_necessities' => array(
      'variable' => 'b9e6fcc2994af79ace97842384ca487c',
      'filter' => 'a309640f3922c5ff9bc71f379b688848',
      'wysiwyg' => '5ca615f2518863b8d3ef9c62d95388e2',
      'dependencies' => 'ae4b80cd13ed5c7269847594b38eed11',
      'breakpoint_group' => '2034cdad41b5f30cecee27631d52e0d9',
      'breakpoints' => '92126a5493fbbbcf5430225cc6a30bc3',
      'file_display' => '3d176c088838032167a5df49fd406fd2',
      'image' => 'e3cdc700010df66cb9201607470899c1',
      'linkit_profiles' => 'f3f1f8b6d524c6ce624b3ae218c1b43f',
      'picture_mapping' => '9bf0f5168bc91716ca7572bab2a77269',
    ),
    'bear_user' => array(
      'user_role' => '1b2fd5eccc47987ae58056adbacc418c',
      'user_permission' => '4b0c788ccee7fa3e2367f869ff5d9910',
      'dependencies' => '2003e3eadc26778d0833b782da171cda',
    ),
    'bear_habitat' => array(
      'dependencies' => '8bacdd3a13cd8c5ba65a96ea5d308c7d',
      'variable' => '0a16a380b56341f5efb10c5f2c058a20',
    ),
    'bear_habitat_local' => array(
      'variable' => '4b2b02ec3c8711972d45ac8d833fd1bb',
      'dependencies' => '8bacdd3a13cd8c5ba65a96ea5d308c7d',
    ),
  ),
  'features_ignored_orphans' => array(),
  'features_semaphore' => array(),
  'file_temporary_path' => '/tmp',
  'filter_fallback_format' => 'plain_text',
  'habitat_disable_dev' => array(
    0 => 'bear_habitat_prod',
  ),
  'habitat_disable_local' => array(
    0 => 'overlay',
    1 => 'bear_habitat_prod',
  ),
  'habitat_disable_prod' => array(
    0 => 'habitat_ui',
    1 => 'field_ui',
    2 => 'devel',
    3 => 'views_ui',
    4 => 'bear_habitat_local',
  ),
  'habitat_disable_test' => array(
    0 => 'habitat_ui',
    1 => 'field_ui',
    2 => 'devel',
    3 => 'views_ui',
    4 => 'bear_habitat_local',
  ),
  'habitat_enable_dev' => array(
    0 => '',
  ),
  'habitat_enable_local' => array(
    0 => 'habitat_ui',
    1 => 'field_ui',
    2 => 'devel',
    3 => 'views_ui',
    4 => 'bear_habitat_local',
  ),
  'habitat_enable_prod' => array(
    0 => 'bear_habitat_prod',
  ),
  'habitat_enable_test' => array(
    0 => 'bear_habitat_prod',
  ),
  'habitat_habitats' => array(
    0 => 'prod',
    1 => 'test',
    2 => 'dev',
    3 => 'local',
  ),
  'habitat_variable' => 'fetcher_environment',
  'install_profile' => 'bear',
  'install_task' => 'done',
  'install_time' => 1416420463,
  'jquery_update_jquery_version' => 1.7,
  'media_icon_base_directory' => 'public://media-icons',
  'media_wysiwyg_wysiwyg_browser_plugins' => array(
    0 => 'upload',
    1 => 'media_default--media_browser_1',
    2 => 'media_internet',
  ),
  'menu_expanded' => array(),
  'menu_masks' => array(
    0 => 501,
    1 => 493,
    2 => 252,
    3 => 250,
    4 => 247,
    5 => 246,
    6 => 245,
    7 => 127,
    8 => 125,
    9 => 124,
    10 => 123,
    11 => 122,
    12 => 121,
    13 => 63,
    14 => 62,
    15 => 61,
    16 => 60,
    17 => 58,
    18 => 56,
    19 => 44,
    20 => 31,
    21 => 30,
    22 => 29,
    23 => 27,
    24 => 24,
    25 => 23,
    26 => 21,
    27 => 15,
    28 => 14,
    29 => 13,
    30 => 11,
    31 => 10,
    32 => 7,
    33 => 6,
    34 => 5,
    35 => 3,
    36 => 2,
    37 => 1,
  ),
  'node_admin_theme' => 1,
  'node_options_page' => array(
    0 => 'status',
  ),
  'node_submitted_page' => FALSE,
  'pathauto_blog_pattern' => 'blogs/[user:name]',
  'pathauto_forum_pattern' => '[term:vocabulary]/[term:name]',
  'pathauto_node_pattern' => 'content/[node:title]',
  'pathauto_punctuation_hyphen' => 1,
  'pathauto_taxonomy_term_pattern' => '[term:vocabulary]/[term:name]',
  'pathauto_user_pattern' => 'users/[user:name]',
  'path_alias_whitelist' => array(
    'user' => TRUE,
  ),
  'preprocess_css' => 0,
  'preprocess_js' => 0,
  'site_default_country' => '',
  'site_mail' => 'admin@example.com',
  'site_name' => 'bear636',
  'theme_default' => 'bear_skin',
  'update_last_check' => 1417543014,
  'update_last_email_notification' => 1417543002,
  'update_notify_emails' => array(
    0 => 'admin@example.com',
  ),
  'user_admin_role' => 4,
  'user_register' => 2,
  'variable_module_list' => array(
    'variable_realm' => array(
      0 => 'variable_realm_list_global',
      1 => 'variable_realm_list_environment',
      2 => 'variable_realm_weight_global',
      3 => 'variable_realm_weight_environment',
    ),
  ),
  'variable_realm_list_environment' => array(
    0 => 'variable_realm_list_[variable_realm]',
    1 => 'environment_indicator_overwritten_name',
  ),
  'xmlsitemap_generated_last' => 1416420463,
  'xmlsitemap_regenerate_needed' => FALSE,
  'fetcher_environment' => 'local',
);

return $realm_variables;
}
