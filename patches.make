; This patches.make file is used by https://bitbucket.org/davereid/drush-patchfile
; Our project contains patches for both Drupal core and contrib modules/themes.

; Patches are listed in alphabetical order by project name.

; @see https://www.drupal.org/node/2486843#comment-10268935
projects[coffee][patch][] = http://www.drupal.org/files/issues/coffee-fix_once-2486843-2.patch

; @see https://www.drupal.org/node/2168193#comment-10474448
projects[pathauto][patch][] = https://www.drupal.org/files/issues/pathauto-d8_port-2168193-56.patch

; @see - http://www.drupal.org/node/2264739#comment-10465641
projects[drupal][patch][] = http://www.drupal.org/files/issues/2264739-3-allow_multiple_fields_no_tabledrag-8.0.x.patch

; @see https://www.drupal.org/node/2687913#comment-10972551
projects[menu_link_config][patch][] = https://www.drupal.org/files/issues/2687913-1-config_menu_link-front-default-value.patch
