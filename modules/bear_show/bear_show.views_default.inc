<?php
/**
 * @file
 * bear_show.views_default.inc
 */

/**
 * Implements hook_views_default_views().
 */
function bear_show_views_default_views() {
  $export = array();

  $view = new view();
  $view->name = 'slideshow';
  $view->description = '';
  $view->tag = 'default';
  $view->base_table = 'node';
  $view->human_name = 'Slideshow';
  $view->core = 7;
  $view->api_version = '3.0';
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */

  /* Display: Master */
  $handler = $view->new_display('default', 'Master', 'default');
  $handler->display->display_options['use_more_always'] = FALSE;
  $handler->display->display_options['access']['type'] = 'perm';
  $handler->display->display_options['cache']['type'] = 'time';
  $handler->display->display_options['cache']['results_lifespan'] = '-1';
  $handler->display->display_options['cache']['results_lifespan_custom'] = '0';
  $handler->display->display_options['cache']['output_lifespan'] = '-1';
  $handler->display->display_options['cache']['output_lifespan_custom'] = '0';
  $handler->display->display_options['query']['type'] = 'views_query';
  $handler->display->display_options['exposed_form']['type'] = 'basic';
  $handler->display->display_options['pager']['type'] = 'full';
  $handler->display->display_options['style_plugin'] = 'slideshow';
  $handler->display->display_options['style_options']['slideshow_type'] = 'flexslider_views_slideshow';
  $handler->display->display_options['style_options']['slideshow_skin'] = 'default';
  $handler->display->display_options['style_options']['skin_info'] = array(
    'class' => 'default',
    'name' => 'Default',
    'module' => 'views_slideshow',
    'path' => '',
    'stylesheets' => array(),
  );
  $handler->display->display_options['style_options']['widgets']['top']['views_slideshow_pager']['weight'] = '1';
  $handler->display->display_options['style_options']['widgets']['top']['views_slideshow_pager']['type'] = 'views_slideshow_pager_fields';
  $handler->display->display_options['style_options']['widgets']['top']['views_slideshow_pager']['views_slideshow_pager_fields_fields'] = array(
    'title' => 0,
    'field_slideshow_image' => 0,
    'field_slideshow_tagline' => 0,
  );
  $handler->display->display_options['style_options']['widgets']['top']['views_slideshow_controls']['weight'] = '1';
  $handler->display->display_options['style_options']['widgets']['top']['views_slideshow_controls']['type'] = 'views_slideshow_controls_text';
  $handler->display->display_options['style_options']['widgets']['top']['views_slideshow_slide_counter']['weight'] = '1';
  $handler->display->display_options['style_options']['widgets']['bottom']['views_slideshow_pager']['weight'] = '1';
  $handler->display->display_options['style_options']['widgets']['bottom']['views_slideshow_pager']['type'] = 'views_slideshow_pager_fields';
  $handler->display->display_options['style_options']['widgets']['bottom']['views_slideshow_pager']['views_slideshow_pager_fields_fields'] = array(
    'title' => 0,
    'field_slideshow_image' => 0,
    'field_slideshow_tagline' => 0,
  );
  $handler->display->display_options['style_options']['widgets']['bottom']['views_slideshow_controls']['weight'] = '1';
  $handler->display->display_options['style_options']['widgets']['bottom']['views_slideshow_controls']['type'] = 'views_slideshow_controls_text';
  $handler->display->display_options['style_options']['widgets']['bottom']['views_slideshow_slide_counter']['weight'] = '1';
  $handler->display->display_options['row_plugin'] = 'fields';
  /* No results behavior: Global: Text area */
  $handler->display->display_options['empty']['area']['id'] = 'area';
  $handler->display->display_options['empty']['area']['table'] = 'views';
  $handler->display->display_options['empty']['area']['field'] = 'area';
  $handler->display->display_options['empty']['area']['empty'] = TRUE;
  $handler->display->display_options['empty']['area']['content'] = 'The Bear Main Slideshow is empty. <a href="/node/add/slideshow">Add Slideshow Content</a> to display a Flexslider Views Slideshow of images.';
  $handler->display->display_options['empty']['area']['format'] = 'filtered_html';
  /* Field: Content: Title */
  $handler->display->display_options['fields']['title']['id'] = 'title';
  $handler->display->display_options['fields']['title']['table'] = 'node';
  $handler->display->display_options['fields']['title']['field'] = 'title';
  $handler->display->display_options['fields']['title']['label'] = '';
  $handler->display->display_options['fields']['title']['exclude'] = TRUE;
  $handler->display->display_options['fields']['title']['alter']['word_boundary'] = FALSE;
  $handler->display->display_options['fields']['title']['alter']['ellipsis'] = FALSE;
  $handler->display->display_options['fields']['title']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['title']['link_to_node'] = FALSE;
  /* Field: Content: Image */
  $handler->display->display_options['fields']['field_slideshow_image']['id'] = 'field_slideshow_image';
  $handler->display->display_options['fields']['field_slideshow_image']['table'] = 'field_data_field_slideshow_image';
  $handler->display->display_options['fields']['field_slideshow_image']['field'] = 'field_slideshow_image';
  $handler->display->display_options['fields']['field_slideshow_image']['label'] = '';
  $handler->display->display_options['fields']['field_slideshow_image']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_slideshow_image']['click_sort_column'] = 'fid';
  $handler->display->display_options['fields']['field_slideshow_image']['settings'] = array(
    'image_style' => 'slideshow',
    'image_link' => '',
  );
  /* Field: Content: Tagline */
  $handler->display->display_options['fields']['field_slideshow_tagline']['id'] = 'field_slideshow_tagline';
  $handler->display->display_options['fields']['field_slideshow_tagline']['table'] = 'field_data_field_slideshow_tagline';
  $handler->display->display_options['fields']['field_slideshow_tagline']['field'] = 'field_slideshow_tagline';
  $handler->display->display_options['fields']['field_slideshow_tagline']['label'] = '';
  $handler->display->display_options['fields']['field_slideshow_tagline']['element_label_colon'] = FALSE;
  /* Sort criterion: Content: Post date */
  $handler->display->display_options['sorts']['created']['id'] = 'created';
  $handler->display->display_options['sorts']['created']['table'] = 'node';
  $handler->display->display_options['sorts']['created']['field'] = 'created';
  $handler->display->display_options['sorts']['created']['order'] = 'DESC';
  /* Filter criterion: Content: Published */
  $handler->display->display_options['filters']['status']['id'] = 'status';
  $handler->display->display_options['filters']['status']['table'] = 'node';
  $handler->display->display_options['filters']['status']['field'] = 'status';
  $handler->display->display_options['filters']['status']['value'] = 1;
  $handler->display->display_options['filters']['status']['group'] = 1;
  $handler->display->display_options['filters']['status']['expose']['operator'] = FALSE;
  /* Filter criterion: Content: Type */
  $handler->display->display_options['filters']['type']['id'] = 'type';
  $handler->display->display_options['filters']['type']['table'] = 'node';
  $handler->display->display_options['filters']['type']['field'] = 'type';
  $handler->display->display_options['filters']['type']['value'] = array(
    'slideshow' => 'slideshow',
  );

  /* Display: Bear Main Slideshow */
  $handler = $view->new_display('panel_pane', 'Bear Main Slideshow', 'panel_pane_1');
  $handler->display->display_options['pane_category']['name'] = 'Bear Show';
  $handler->display->display_options['pane_category']['weight'] = '0';

  /* Display: Contextual Block by Page */
  $handler = $view->new_display('block', 'Contextual Block by Page', 'block_1');
  $handler->display->display_options['defaults']['empty'] = FALSE;
  $handler->display->display_options['defaults']['arguments'] = FALSE;
  /* Contextual filter: Content: Page (field_page) */
  $handler->display->display_options['arguments']['field_page_target_id']['id'] = 'field_page_target_id';
  $handler->display->display_options['arguments']['field_page_target_id']['table'] = 'field_data_field_page';
  $handler->display->display_options['arguments']['field_page_target_id']['field'] = 'field_page_target_id';
  $handler->display->display_options['arguments']['field_page_target_id']['default_action'] = 'default';
  $handler->display->display_options['arguments']['field_page_target_id']['default_argument_type'] = 'node';
  $handler->display->display_options['arguments']['field_page_target_id']['summary']['number_of_records'] = '0';
  $handler->display->display_options['arguments']['field_page_target_id']['summary']['format'] = 'default_summary';
  $handler->display->display_options['arguments']['field_page_target_id']['summary_options']['items_per_page'] = '25';
  $handler->display->display_options['arguments']['field_page_target_id']['specify_validation'] = TRUE;
  $handler->display->display_options['arguments']['field_page_target_id']['validate']['type'] = 'node';
  $handler->display->display_options['arguments']['field_page_target_id']['validate_options']['access'] = TRUE;
  $handler->display->display_options['block_description'] = 'Page Slideshow';
  $export['slideshow'] = $view;

  return $export;
}
