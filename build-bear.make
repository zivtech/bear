; Use this file to build a full distribution including Drupal core and the
; Bear install profile using the following command:
;
; drush make build-bear.make <target directory>

api = 2
core = 7.x

; Drupal core.
includes[] = drupal-org-core.make

; Download the Bear install profile and recursively build all its dependencies.
projects[bear][type] = "profile"
projects[bear][download][type] = "git"
projects[bear][download][url] = "http://git.drupal.org/project/bear.git"
projects[bear][download][branch] = "7.x-2.x"