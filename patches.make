; This patches.make file is used by https://bitbucket.org/davereid/drush-patchfile
; Our project contains patches for both Drupal core and contrib modules/themes.

api = 2
core = 7.x

; When a page has multilple URL aliases, treat one as canonical.
; @see https://www.drupal.org/node/1934086#comment-7137850
projects[drupal][patch][] = "http://drupal.org/files/drupal-1934086-path_load_order-1.patch"

; When a page has multiple menu items, treat one as canonical.
; @see https://www.drupal.org/node/1875824#comment-7420862
projects[drupal][patch][] = "http://drupal.org/files/core-1875824-3-d7.patch"

; Prevent AJAX errors on autocompletes.
; @see https://www.drupal.org/node/1232416#comment-10240839
projects[drupal][patch][] = "https://www.drupal.org/files/issues/autocomplete-1232416-205-7x.patch"

; Fix a PHP notice relating to file uploads.
; @see https://www.drupal.org/node/1903010#comment-8415695
projects[drupal][patch][] = "http://drupal.org/files/issues/drupal-undefinedindex_fileupload-1903010-4.patch"

; When configuring fields with a cardinality > 1, provide an option to not use drag and drop tables.
; @see https://www.drupal.org/node/2264739
projects[drupal][patch][] = "http://drupal.org/files/issues/death-to-tabledrag.patch"

; Allow schema-relative URLs.
; @see https://www.drupal.org/node/1783278#comment-9735933
 projects[drupal][patch][] = "https://www.drupal.org/files/issues/schema-relative-1783278-17-D7-do-not-test.patch"
 
; Prevent alter hooks from making Features appear as overridden. 
; @see https://www.drupal.org/node/766264#comment-9688919
projects[features][patch][] = "https://www.drupal.org/files/issues/features-alter_overrides-766264-63.patch"

; @see https://www.drupal.org/node/2630530#comment-10645488
projects[bear_skin][patch][] = https://www.drupal.org/files/issues/2630530-2-bear_skin-handle_class_attribute.patch

; @see https://www.drupal.org/node/2480503#comment-10332267
projects[asset][patch][] = "https://www.drupal.org/files/issues/2480503-1-asset-add_more_icons-7.x-1.0-beta4.patch"

; @see https://www.drupal.org/node/2174613#comment-10509492
projects[asset][patch][] = "https://www.drupal.org/files/issues/asset-youtube-video-2174613-6--beta4.patch"

; @see https://www.drupal.org/node/2612602#comment-10550910
projects[asset][patch][] = https://www.drupal.org/files/issues/2612602-3-asset-inline_entity_form_integration.patch

; @see https://www.drupal.org/node/2463187#comment-9779355
; projects[ckeditor][patch][] = https://www.drupal.org/files/issues/allow-custom-icon-paths-2463187-2.patch
