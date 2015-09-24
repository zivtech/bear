; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

; Modules.
projects[] = admin_toolbar

projects[devel][download][type] = git
projects[devel][download][url] = http://git.drupal.org/project/devel.git
projects[devel][download][revision] = 76ff3d32e6bae2d94bee96d52f21370d09aef309

projects[coffee][download][type] = git
projects[coffee][download][url] = http://git.drupal.org/project/coffee.git
projects[coffee][download][revision] = 6689904140fbdf578031ac977e912a1ce253cb71
; @see https://www.drupal.org/node/2486843#comment-10268935
projects[coffee][patch][] = http://www.drupal.org/files/issues/coffee-fix_once-2486843-2.patch

projects[entity_browser][download][type] = git
projects[entity_browser][download][url] = http://github.com/drupal-media/entity_browser
projects[entity_browser][download][revision] = e483550fdaced7a4eb0a09237e5e58bbbd315381

projects[entity_embed][download][type] = git
projects[entity_embed][download][url] = http://github.com/drupal-media/entity_embed
projects[entity_embed][download][revision] = 3e9ddc42bad060a085b76903d62155b0fe2a4013


projects[field_group][download][type] = git
projects[field_group][download][url] = http://git.drupal.org/project/field_group.git
projects[field_group][download][revision] = 0d1884eb33e597cfe77daad9c35757b079b3ef3d


; Currently lives on Github.
projects[pathauto][download][type] = git
projects[pathauto][download][url] = http://github.com/md-systems/pathauto.git
projects[pathauto][download][revision] = 219085840ed08ea6e64abc28f63f379ca05f7079

projects[token][download][type] = git
projects[token][download][url] = http://git.drupal.org/project/token.git
projects[token][download][revision] = b17c78fa7f5c8bc332b3006311e959a1058a1dac

; Libraries.

; Themes.
