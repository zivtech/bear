<?php
/**
 * @file
 * bear_necessities.pages_default.inc
 */

/**
 * Implements hook_default_page_manager_pages().
 */
function bear_necessities_default_page_manager_pages() {
  $page = new stdClass();
  $page->disabled = FALSE; /* Edit this to true to make a default page disabled initially */
  $page->api_version = 1;
  $page->name = 'access_denied_403';
  $page->task = 'page';
  $page->admin_title = 'Access Denied (403)';
  $page->admin_description = '';
  $page->path = 'access-denied';
  $page->access = array(
    'logic' => 'and',
    'type' => 'none',
    'settings' => NULL,
  );
  $page->menu = array();
  $page->arguments = array();
  $page->conf = array(
    'admin_paths' => FALSE,
  );
  $page->default_handlers = array();
  $handler = new stdClass();
  $handler->disabled = FALSE; /* Edit this to true to make a default handler disabled initially */
  $handler->api_version = 1;
  $handler->name = 'page_access_denied_403__custom_access_denied';
  $handler->task = 'page';
  $handler->subtask = 'access_denied_403';
  $handler->handler = 'panel_context';
  $handler->weight = 1;
  $handler->conf = array(
    'title' => 'Custom Access Denied',
    'no_blocks' => 0,
    'pipeline' => 'standard',
    'body_classes_to_remove' => '',
    'body_classes_to_add' => '',
    'css_id' => '',
    'css' => '',
    'contexts' => array(),
    'relationships' => array(),
    'name' => 'custom_access_denied',
  );
  $display = new panels_display();
  $display->layout = 'onecol';
  $display->layout_settings = array();
  $display->panel_settings = array(
    'style_settings' => array(
      'default' => NULL,
      'middle' => NULL,
    ),
  );
  $display->cache = array();
  $display->title = 'Access denied';
  $display->uuid = 'a56aacd9-d83c-4291-ab69-11f94c43c9a9';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass();
    $pane->pid = 'new-d8a8b6a6-e6bc-4beb-bac7-dcf544af0ab3';
    $pane->panel = 'middle';
    $pane->type = 'custom';
    $pane->subtype = 'custom';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'admin_title' => '',
      'title' => '',
      'body' => '<p>You are not authorized to access this page.</p>',
      'format' => 'filtered_html',
      'substitute' => TRUE,
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $pane->locks = array();
    $pane->uuid = 'd8a8b6a6-e6bc-4beb-bac7-dcf544af0ab3';
    $display->content['new-d8a8b6a6-e6bc-4beb-bac7-dcf544af0ab3'] = $pane;
    $display->panels['middle'][0] = 'new-d8a8b6a6-e6bc-4beb-bac7-dcf544af0ab3';
    $pane = new stdClass();
    $pane->pid = 'new-beaa6534-8c06-4319-8cba-bf79ef68ac3f';
    $pane->panel = 'middle';
    $pane->type = 'block';
    $pane->subtype = 'user-login';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 0,
      'override_title_text' => '',
      'override_title_heading' => 'h2',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $pane->locks = array();
    $pane->uuid = 'beaa6534-8c06-4319-8cba-bf79ef68ac3f';
    $display->content['new-beaa6534-8c06-4319-8cba-bf79ef68ac3f'] = $pane;
    $display->panels['middle'][1] = 'new-beaa6534-8c06-4319-8cba-bf79ef68ac3f';
  $display->hide_title = PANELS_TITLE_FIXED;
  $display->title_pane = 'new-d8a8b6a6-e6bc-4beb-bac7-dcf544af0ab3';
  $handler->conf['display'] = $display;
  $page->default_handlers[$handler->name] = $handler;
  $pages['access_denied_403'] = $page;

  return $pages;

}
