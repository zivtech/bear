; A separate drupal-org-core.make file allows core patches to be added.

api = 2
core = 8.x

projects[drupal][type] = core
projects[drupal][download][type] = git
projects[drupal][download][url] = http://git.drupal.org/project/drupal.git
projects[drupal][download][branch] = 8.0.x
projects[drupal][download][revision] = 9ed49f24dd8b20f367d399c203eaa6ab40105901

;Both of these patches are failing against the latest 8.x-dev. Need to re-roll.
; @see - https://www.drupal.org/node/2264739#comment-10363963
;projects[drupal][patch][] = https://www.drupal.org/files/issues/2264739-2-allow_multiple_fields_no_tabledrag-8.0.x.patch
; @see - https://www.drupal.org/node/808730#comment-9749573
;projects[drupal][patch][] = http://www.drupal.org/files/issues/show_the_revisions-808730-24.patch
