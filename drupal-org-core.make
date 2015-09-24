; A separate drupal-org-core.make file allows core patches to be added.

api = 2
core = 8.x

projects[drupal][type] = core
projects[drupal][download][type] = git
projects[drupal][download][url] = http://git.drupal.org/project/drupal.git
projects[drupal][download][revision] = 1d1fe19702f5dc6894acc45431b1d0c85ab306d7
; @see - https://www.drupal.org/node/2264739#comment-10363963
projects[drupal][patch][] = https://www.drupal.org/files/issues/2264739-2-allow_multiple_fields_no_tabledrag-8.0.x.patch
