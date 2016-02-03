; A separate drupal-org-core.make file allows core patches to be added.

api = 2
core = 8.x

projects[drupal][type] = core
projects[drupal][version] = 8.0.1

; @see - http://www.drupal.org/node/2264739#comment-10465641
projects[drupal][patch][] = https://www.drupal.org/files/issues/2264739-4-allow_multiple_fields_no_tabledrag-8.0.x.patch

; @see - https://www.drupal.org/node/2360165#comment-9274859
;projects[drupal][patch][] = https://www.drupal.org/files/issues/ThemeInitialization_1.patch

; @see - https://www.drupal.org/node/2425015#comment-9812601
;projects[drupal][patch][] = https://www.drupal.org/files/issues/0001-Issue-2425015-Provide-correct-message-when-installin.patch
