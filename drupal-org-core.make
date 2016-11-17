; A separate drupal-org-core.make file allows core patches to be added.

api = 2
core = 8.x

projects[drupal][type] = core
projects[drupal][version] = 8.2.3

; @see - https://www.drupal.org/node/2264739#comment-10900072
projects[drupal][patch][] = https://www.drupal.org/files/issues/2264739-5-allow_multiple_fields_no_tabledrag-8.0.x.patch

; @see - https://www.drupal.org/node/2665384#comment-11784826
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal-2665384-12.patch

; @see - https://www.drupal.org/node/2632132#comment-10998867
projects[drupal][patch][] = https://www.drupal.org/files/issues/Move_Seven_block_config_into_the_Seven_theme-2632132-23.patch

; @see - https://www.drupal.org/node/2642588#comment-11032269
projects[drupal][patch][] = https://www.drupal.org/files/issues/Move_Stark_block_config_into_the_Stark_theme-2642588-15.patch

; @see - https://www.drupal.org/node/2642590#comment-10996003
projects[drupal][patch][] = https://www.drupal.org/files/issues/Move_Bartik_block_config_into_the_Bartik_theme-2642590-8.patch
