; A separate drupal-org-core.make file allows core patches to be added.

api = 2
core = 8.x

projects[drupal][type] = core
projects[drupal][download][type] = git
projects[drupal][download][url] = http://git.drupal.org/project/drupal.git
projects[drupal][download][branch] = 8.0.x
projects[drupal][download][revision] = 8477f6b786a53a64aae0a253d92313a2e6d842d0
; @see - http://www.drupal.org/node/2264739#comment-10363963
projects[drupal][patch][] = http://www.drupal.org/files/issues/2264739-2-allow_multiple_fields_no_tabledrag-8.0.x.patch
; @see - https://www.drupal.org/node/808730#comment-9749573
projects[drupal][patch][] = http://www.drupal.org/files/issues/show_the_revisions-808730-24.patch
