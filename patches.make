; This patches.make file is used by https://bitbucket.org/davereid/drush-patchfile
; Our project contains patches for both Drupal core and contrib modules/themes.

; Patches are listed in alphabetical order by project name.
api=2

; @see - http://www.drupal.org/node/2264739#comment-10465641
projects[drupal][patch][] = http://www.drupal.org/files/issues/2264739-3-allow_multiple_fields_no_tabledrag-8.0.x.patch
