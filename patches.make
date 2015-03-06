; This patches.make file is used by https://bitbucket.org/davereid/drush-patchfile
; Our project contains patches for both Drupal core and contrib modules/themes.

; Uncomment these lines after the install profile has been built to use this workflow.
; includes[] = drupal-org.make
; includes[] = drupal-org-core.make

; @see https://www.drupal.org/node/1934086#comment-7137850
projects[drupal][patch][] = "http://drupal.org/files/drupal-1934086-path_load_order-1.patch"

; @see https://www.drupal.org/node/1875824#comment-7420862
projects[drupal][patch][] = "http://drupal.org/files/core-1875824-3-d7.patch"

; @see https://www.drupal.org/node/1232416#comment-8262487
projects[drupal][patch][] = "http://drupal.org/files/issues/fix_for_autocomplete_terminated_error-1232416-156.patch"

; @see https://www.drupal.org/node/1903010#comment-8415695
projects[drupal][patch][] = "http://drupal.org/files/issues/drupal-undefinedindex_fileupload-1903010-4.patch"

; @see https://www.drupal.org/node/2264739
projects[drupal][patch][] = "http://drupal.org/files/issues/death-to-tabledrag.patch"

; @see https://www.drupal.org/node/1783278#comment-7835817
projects[drupal][patch][] = "http://drupal.org/files/schema-relative-1783278-7-D7-do-not-test.patch"

; @see https://www.drupal.org/node/766264#comment-8818877
projects[features][patch][] = "http://www.drupal.org/files/issues/alter_overrides-766264-45.patch"

; @see https://www.drupal.org/node/1036962#comment-9255301
projects[views][patch][] = "http://www.drupal.org/files/issues/1036962-views-ajax-destination-65.patch"

; @see https://www.drupal.org/node/1903850#comment-8368059
libraries[plupload][patch][] = "http://drupal.org/files/issues/plupload-1_5_8-rm_examples-1903850-16.patch"
