<?php
/**
 * @file
 * bear_necessities.default_breakpoint_group.inc
 */

/**
 * Implements hook_default_breakpoint_group().
 */
function bear_necessities_default_breakpoint_group() {
  $export = array();

  $breakpoint_group = new stdClass();
  $breakpoint_group->disabled = FALSE; /* Edit this to true to make a default breakpoint_group disabled initially */
  $breakpoint_group->api_version = 1;
  $breakpoint_group->machine_name = 'bear_default';
  $breakpoint_group->name = 'Bear Default';
  $breakpoint_group->breakpoints = array(
    0 => 'custom.user.narrow',
    1 => 'custom.user.mobile',
    2 => 'custom.user.full',
  );
  $breakpoint_group->type = 'custom';
  $breakpoint_group->overridden = 0;
  $export['bear_default'] = $breakpoint_group;

  return $export;
}
