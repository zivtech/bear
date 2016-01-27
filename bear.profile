<?php
/**
 * @file
 * Enables modules and site configuration for a bear site installation.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for node_type_add_form().
 */
function bear_form_node_type_add_form_alter(&$form, FormStateInterface $form_state) {
  $form['workflow']['options']['#default_value']['revision'] = 'revision';
  if (isset($form['submission']['preview_mode'])) {
    $form['submission']['preview_mode']['#default_value'] = DRUPAL_DISABLED;
  }
  if (isset($form['display']['display_submitted'])) {
    $form['display']['display_submitted']['#default_value'] = DRUPAL_DISABLED;
  }
}

/**
 * Implements hook_form_BASE_FORM_ID_alter() for node_type_form().
 *
 * Hide promote and sticky form elements.
 */
function bear_form_node_type_form_alter(&$form, FormStateInterface $form_state) {
  if (isset($form['workflow']['options']['#options']['promote'])) {
    unset($form['workflow']['options']['#options']['promote']);
  }
  if (isset($form['workflow']['options']['#options']['sticky'])) {
    unset($form['workflow']['options']['#options']['sticky']);
  }
}

/**
 * Implements hook_form_BASE_FORM_ID_alter() for node_form().
 *
 * Hide promote and sticky form elements.
 *
 * Hide revision information from users who do not have permission to
 * view content revisions.
 */
function bear_form_node_form_alter(&$form, FormStateInterface $form_state) {
  if (isset($form['promote'])) {
    $form['promote']['#access'] = FALSE;
  }
  if (isset($form['sticky'])) {
    $form['sticky']['#access'] = FALSE;
  }

  if (!\Drupal::currentUser()->hasPermission('view all revisions')) {
    if (isset($form['revision_information'])) {
      $form['revision_information']['#access'] = FALSE;
    }
  }
}
