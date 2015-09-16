; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

; Modules.
projects[] = admin_toolbar

projects[coffee][download][type] = git
projects[coffee][download][url] = http://git.drupal.org/project/coffee.git
projects[coffee][download][revision] = 6689904140fbdf578031ac977e912a1ce253cb71
; @see https://www.drupal.org/node/2486843#comment-10268935
projects[coffee][patch][] = http://www.drupal.org/files/issues/coffee-fix_once-2486843-2.patch

projects[pathauto][download][type] = git
projects[pathauto][download][url] = http://github.com/md-systems/pathauto.git
projects[pathauto][download][revision] = 219085840ed08ea6e64abc28f63f379ca05f7079

; Libraries.

; Themes.
