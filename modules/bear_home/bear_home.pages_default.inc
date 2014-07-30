<?php
/**
 * @file
 * bear_home.pages_default.inc
 */

/**
 * Implements hook_default_page_manager_pages().
 */
function bear_home_default_page_manager_pages() {
  $page = new stdClass();
  $page->disabled = FALSE; /* Edit this to true to make a default page disabled initially */
  $page->api_version = 1;
  $page->name = 'bear_home';
  $page->task = 'page';
  $page->admin_title = 'Bear Home';
  $page->admin_description = 'This is a placeholder homepage panel to show off some of Bear\'s features upon installation. It can be modified or deleted depending on your needs.';
  $page->path = 'home';
  $page->access = array();
  $page->menu = array();
  $page->arguments = array();
  $page->conf = array(
    'admin_paths' => FALSE,
  );
  $page->default_handlers = array();
  $handler = new stdClass();
  $handler->disabled = FALSE; /* Edit this to true to make a default handler disabled initially */
  $handler->api_version = 1;
  $handler->name = 'page_bear_home_panel_context';
  $handler->task = 'page';
  $handler->subtask = 'bear_home';
  $handler->handler = 'panel_context';
  $handler->weight = 0;
  $handler->conf = array(
    'title' => 'Panel',
    'no_blocks' => 0,
    'pipeline' => 'standard',
    'body_classes_to_remove' => '',
    'body_classes_to_add' => '',
    'css_id' => '',
    'css' => '',
    'contexts' => array(),
    'relationships' => array(),
  );
  $display = new panels_display();
  $display->layout = 'flexible';
  $display->layout_settings = array();
  $display->panel_settings = array(
    'style_settings' => array(
      'default' => NULL,
      'center' => NULL,
    ),
  );
  $display->cache = array();
  $display->title = '';
  $display->uuid = '4b3215b7-20a9-4faf-9de3-03825e37e97f';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass();
    $pane->pid = 'new-763b55e9-fa78-4ac0-b973-db2b245c69da';
    $pane->panel = 'center';
    $pane->type = 'views_panes';
    $pane->subtype = 'slideshow-panel_pane_1';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array();
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $pane->locks = array();
    $pane->uuid = '763b55e9-fa78-4ac0-b973-db2b245c69da';
    $display->content['new-763b55e9-fa78-4ac0-b973-db2b245c69da'] = $pane;
    $display->panels['center'][0] = 'new-763b55e9-fa78-4ac0-b973-db2b245c69da';
    $pane = new stdClass();
    $pane->pid = 'new-adbd1d96-26bf-4762-816e-f322c32aebbd';
    $pane->panel = 'center';
    $pane->type = 'custom';
    $pane->subtype = 'custom';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'admin_title' => 'Welcome to Bear Starter Kit',
      'title' => '',
      'body' => '<p><a href="https://drupal.org/project/bear">Bear Starter Kit</a> is a Drupal installation profile that is to be used as a helpful starting point for new Drupal site builds. Bear Starter Kit comes bundled with useful Drupal modules, the Bear Skin responsive Drupal theme, and patches that fix outstanding conributed project issues.</p><p><strong>Bear Starter Kit is Not a true Drupal distribution!</strong> Developers should feel free to modify the included features to their needs, as well as update contributed modules and themes as one normally would. Please report any issues to the Bear issue queue. You can start by modifying this Panel, <a href="/admin/structure/pages/nojs/operation/page-bear_home/handlers/page_bear_home_panel_context/content">Edit Bear Home</a>.</p>',
      'format' => 'filtered_html',
      'substitute' => TRUE,
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $pane->locks = array();
    $pane->uuid = 'adbd1d96-26bf-4762-816e-f322c32aebbd';
    $display->content['new-adbd1d96-26bf-4762-816e-f322c32aebbd'] = $pane;
    $display->panels['center'][1] = 'new-adbd1d96-26bf-4762-816e-f322c32aebbd';
  $display->hide_title = PANELS_TITLE_FIXED;
  $display->title_pane = 'new-763b55e9-fa78-4ac0-b973-db2b245c69da';
  $handler->conf['display'] = $display;
  $page->default_handlers[$handler->name] = $handler;
  $pages['bear_home'] = $page;

  return $pages;

}
