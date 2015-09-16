; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

projects[pathauto][download][type] = git
projects[pathauto][download][url] = http://github.com/md-systems/pathauto.git
projects[pathauto][download][revision] = 219085840ed08ea6e64abc28f63f379ca05f7079
