; Use this file to build a full distribution including Drupal core and the
; Bear install profile using the following command:
;
; drush make build-bear.make <target directory>

api = 2
core = 7.x

; Drupal core.
includes[] = drupal-org-core.make

; Bear profile.
projects[bear][type] = profile
projects[bear][version] = 2.0