; A separate drupal-org-core.make file makes it so we can apply core patches
; if we need to.

api = 2
core = 7.x

projects[drupal][version] = 7.22
projects[drupal][patch][] = "http://drupal.org/files/drupal-1934086-path_load_order-1.patch"
projects[drupal][patch][] = "http://drupal.org/files/core-1875824-3-d7.patch"
projects[drupal][patch][] = "http://drupal.org/files/issues/fix_for_autocomplete_terminated_error-1232416-156.patch"