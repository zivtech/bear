; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

projects[pathauto][download][type] = git
projects[pathauto][download][url] = http://git.drupal.org/project/pathauto.git
projects[pathauto][download][revision] = 37d11303bf7c1202bc94f92d1877027248e59e40
; @see https://www.drupal.org/node/2168193#comment-10102122
projects[pathauto][patch][] = https://www.drupal.org/files/issues/2168193_pathauto_D8-port_45.patch
