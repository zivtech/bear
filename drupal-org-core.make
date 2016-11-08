; A separate drupal-org-core.make file allows core patches to be added.

api = 2
core = 8.x

projects[drupal][type] = core
projects[drupal][version] = 8.2.2

; @see - https://www.drupal.org/node/2264739#comment-10900072
projects[drupal][patch][] = https://www.drupal.org/files/issues/2264739-5-allow_multiple_fields_no_tabledrag-8.0.x.patch
