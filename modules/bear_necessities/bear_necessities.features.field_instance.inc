<?php
/**
 * @file
 * bear_necessities.features.field_instance.inc
 */

/**
 * Implements hook_field_default_field_instances().
 */
function bear_necessities_field_default_field_instances() {
  $field_instances = array();

  // Exported field_instance: 'asset-embed-field_embed_url'
  $field_instances['asset-embed-field_embed_url'] = array(
    'bundle' => 'embed',
    'default_value' => NULL,
    'deleted' => 0,
    'description' => '',
    'display' => array(
      'default' => array(
        'label' => 'hidden',
        'module' => 'oembed',
        'settings' => array(
          'maxheight' => '',
          'maxwidth' => '',
        ),
        'type' => 'oembed_default',
        'weight' => 0,
      ),
      'full' => array(
        'label' => 'hidden',
        'module' => 'oembed',
        'settings' => array(
          'maxheight' => '',
          'maxwidth' => '',
        ),
        'type' => 'oembed_default',
        'weight' => 0,
      ),
      'widget_search' => array(
        'label' => 'above',
        'settings' => array(),
        'type' => 'hidden',
        'weight' => 0,
      ),
    ),
    'entity_type' => 'asset',
    'fences_wrapper' => 'div_div_div',
    'field_name' => 'field_embed_url',
    'label' => 'Embed URL',
    'required' => 1,
    'settings' => array(
      'absolute_url' => 1,
      'attributes' => array(
        'class' => '',
        'configurable_class' => 0,
        'configurable_title' => 0,
        'rel' => '',
        'target' => 'default',
        'title' => '',
      ),
      'display' => array(
        'url_cutoff' => 80,
      ),
      'enable_tokens' => 1,
      'linkit' => array(
        'enable' => 0,
        'insert_plugin' => '',
      ),
      'rel_remove' => 'default',
      'title' => 'none',
      'title_label_use_field_label' => 0,
      'title_maxlength' => 128,
      'title_value' => '',
      'url' => 0,
      'user_register_form' => FALSE,
      'validate_url' => 1,
    ),
    'widget' => array(
      'active' => 0,
      'module' => 'link',
      'settings' => array(),
      'type' => 'link_field',
      'weight' => 31,
    ),
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('Embed URL');
  t('Body');

  return $field_instances;
}
