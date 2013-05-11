; Use this file to build a full distribution including Drupal core and the
; Bear install profile using the following command:
;
; drush make build-bear.make <target directory>

api = 2
core = 7.x
includes[] = drupal-org-core.make
includes[] = drupal-org.make

; Add Bear to the full distribution build.
projects[bear][type] = profile
projects[bear][version] = 1.x-dev
