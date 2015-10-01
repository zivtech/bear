<?php
/**
 * @file
 * Enables modules and site configuration for a bear site installation.
 */

use Drupal\contact\Entity\ContactForm;
use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function bear_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Add a placeholder as example that one can choose an arbitrary site name.
  $form['site_information']['site_name']['#attributes']['placeholder'] = t('My site');
  $form['#submit'][] = 'bear_form_install_configure_submit';
}

/**
 * Submission handler to sync the contact.form.feedback recipient.
 */
function bear_form_install_configure_submit($form, FormStateInterface $form_state) {
  $site_mail = $form_state->getValue('site_mail');
  ContactForm::load('feedback')->setRecipients([$site_mail])->trustData()->save();
}

/**
 * Implements hook_form_FORM_ID_alter() for node_type_add_form().
 */
function bear_form_node_type_add_form_alter(&$form, FormStateInterface $form_state) {
  $form['workflow']['options']['#default_value']['revision'] = 'revision';
}

/**
 * Implements hook_form_BASE_FORM_ID_alter() for node_type_form().
 *
 * Hide promote and stiky form elements.
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
 * Hide promote and stiky form elements.
 */
function bear_form_node_form_alter(&$form, FormStateInterface $form_state) {
  if (isset($form['promote'])) {
    $form['promote']['#access'] = FALSE;
  }
  if (isset($form['sticky'])) {
    $form['sticky']['#access'] = FALSE;
  }
}
