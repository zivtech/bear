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
  $page->name = 'access_denied_403_';
  $page->task = 'page';
  $page->admin_title = 'Access Denied (403)';
  $page->admin_description = '';
  $page->path = 'access-denied';
  $page->access = array(
    'logic' => 'and',
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
  $handler->name = 'page_access_denied_403___anonymous';
  $handler->task = 'page';
  $handler->subtask = 'access_denied_403_';
  $handler->handler = 'panel_context';
  $handler->weight = 0;
  $handler->conf = array(
    'title' => 'Anonymous',
    'no_blocks' => 0,
    'pipeline' => 'standard',
    'body_classes_to_remove' => '',
    'body_classes_to_add' => '',
    'css_id' => '',
    'css' => '',
    'contexts' => array(),
    'relationships' => array(),
    'name' => 'anonymous',
    'access' => array(
      'plugins' => array(
        0 => array(
          'name' => 'role',
          'settings' => array(
            'rids' => array(
              0 => 1,
            ),
          ),
          'context' => 'logged-in-user',
          'not' => FALSE,
        ),
      ),
      'logic' => 'and',
    ),
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
  $display->uuid = 'f9e30a27-ea52-46e0-8414-d67f0947a4b0';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass();
    $pane->pid = 'new-25361b8d-c1cc-4c1a-8ed1-0beeb372f6cb';
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
    $pane->uuid = '25361b8d-c1cc-4c1a-8ed1-0beeb372f6cb';
    $display->content['new-25361b8d-c1cc-4c1a-8ed1-0beeb372f6cb'] = $pane;
    $display->panels['middle'][0] = 'new-25361b8d-c1cc-4c1a-8ed1-0beeb372f6cb';
    $pane = new stdClass();
    $pane->pid = 'new-5545e7d3-ecad-4fdb-ac74-1b80678eb0d1';
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
    $pane->uuid = '5545e7d3-ecad-4fdb-ac74-1b80678eb0d1';
    $display->content['new-5545e7d3-ecad-4fdb-ac74-1b80678eb0d1'] = $pane;
    $display->panels['middle'][1] = 'new-5545e7d3-ecad-4fdb-ac74-1b80678eb0d1';
  $display->hide_title = PANELS_TITLE_FIXED;
  $display->title_pane = 'new-25361b8d-c1cc-4c1a-8ed1-0beeb372f6cb';
  $handler->conf['display'] = $display;
  $page->default_handlers[$handler->name] = $handler;
  $handler = new stdClass();
  $handler->disabled = FALSE; /* Edit this to true to make a default handler disabled initially */
  $handler->api_version = 1;
  $handler->name = 'page_access_denied_403___authenticated';
  $handler->task = 'page';
  $handler->subtask = 'access_denied_403_';
  $handler->handler = 'panel_context';
  $handler->weight = 1;
  $handler->conf = array(
    'title' => 'Authenticated',
    'no_blocks' => 0,
    'pipeline' => 'standard',
    'body_classes_to_remove' => '',
    'body_classes_to_add' => '',
    'css_id' => '',
    'css' => '',
    'contexts' => array(),
    'relationships' => array(),
    'name' => 'authenticated',
    'access' => array(
      'plugins' => array(
        0 => array(
          'name' => 'role',
          'settings' => array(
            'rids' => array(
              0 => 1,
            ),
          ),
          'context' => 'logged-in-user',
          'not' => TRUE,
        ),
      ),
      'logic' => 'and',
    ),
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
  $display->uuid = 'fe057547-6417-4d40-8110-ccff7a412a85';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass();
    $pane->pid = 'new-a3d8145a-5362-4835-ab61-90d40ee59de0';
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
    $pane->uuid = 'a3d8145a-5362-4835-ab61-90d40ee59de0';
    $display->content['new-a3d8145a-5362-4835-ab61-90d40ee59de0'] = $pane;
    $display->panels['middle'][0] = 'new-a3d8145a-5362-4835-ab61-90d40ee59de0';
  $display->hide_title = PANELS_TITLE_FIXED;
  $display->title_pane = 'new-a3d8145a-5362-4835-ab61-90d40ee59de0';
  $handler->conf['display'] = $display;
  $page->default_handlers[$handler->name] = $handler;
  $pages['access_denied_403_'] = $page;

  return $pages;

}
