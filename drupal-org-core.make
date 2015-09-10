; A separate drupal-org-core.make file allows core patches to be added.

api = 2
core = 7.x

; @see https://www.drupal.org/node/1934086#comment-7137850
projects[drupal][patch][] = "http://drupal.org/files/drupal-1934086-path_load_order-1.patch"

; @see https://www.drupal.org/node/1875824#comment-7420862
projects[drupal][patch][] = "http://drupal.org/files/core-1875824-3-d7.patch"

; @see https://www.drupal.org/node/1232416#comment-8262487
projects[drupal][patch][] = "https://www.drupal.org/files/issues/autocomplete-1232416-205-7x.patch"

; @see https://www.drupal.org/node/1903010#comment-8415695
projects[drupal][patch][] = "http://drupal.org/files/issues/drupal-undefinedindex_fileupload-1903010-4.patch"

; @see https://www.drupal.org/node/2264739
projects[drupal][patch][] = "http://drupal.org/files/issues/death-to-tabledrag.patch"

; @see https://www.drupal.org/node/1783278#comment-9735933
projects[drupal][patch][] = "https://www.drupal.org/files/issues/schema-relative-1783278-17-D7-do-not-test.patch"

