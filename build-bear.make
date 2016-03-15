; Use this file to build a full distribution including Drupal core and the
; Bear install profile using the following command:
;
; drush make build-bear.make <target directory>

api = 2
core = 7.x

; Include the additional makes files we have created for core and contrib.
includes[] = drupal-org-core.make
includes[] = drupal-org.make

; Download the Bear install profile and recursively build all its dependencies.
projects[bear][type] = "profile"
projects[bear][download][type] = "git"
projects[bear][download][url] = "http://git.drupal.org/project/bear.git"
projects[bear][download][branch] = "7.x-2.x"