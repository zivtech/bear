; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

; For dev releases, please use git download type and pin to a specific git revision.
; This will ensure Bear always builds with the same versions of it's dependencies in a given release.

; Modules.
projects[] = admin_toolbar

projects[] = ckeditor_media_embed

projects[] = coffee

projects[ctools][version] = "3.0-alpha26"

projects[] = devel

projects[] = diff

projects[] = entity_reference_revisions

projects[] = field_group

projects[field_help_helper][version] = 1.0

projects[layout_plugin][version] = "1.0-alpha22"

projects[menu_link_config][download][type] = git
projects[menu_link_config][download][url] = http://git.drupal.org/project/menu_link_config.git
projects[menu_link_config][download][branch] = 8.x-1.x
projects[menu_link_config][download][revision] = e424f20fbf531a24d93acdf91f34821598fb4c51
; @see https://www.drupal.org/node/2687913#comment-10972551
projects[menu_link_config][patch][] = https://www.drupal.org/files/issues/2687913-1-config_menu_link-front-default-value.patch

projects[page_manager][version] = "1.0-alpha23"

projects[panels][version] = "3.0-beta4"

projects[paragraphs][download][type] = git
projects[paragraphs][download][url] = http://git.drupal.org/project/paragraphs.git
projects[paragraphs][download][branch] = 8.x-1.x
projects[paragraphs][download][revision] = 3b78973fda22865d97295c387f61f798494a615a

projects[] = pathauto

projects[] = simple_sitemap

projects[] = token

; Libraries.

; Themes.
projects[bear_skin][type] = "theme"
projects[bear_skin][download][type] = git
projects[bear_skin][download][url] = http://git.drupal.org/project/bear_skin.git
projects[bear_skin][download][branch] = 8.x-1.x
projects[bear_skin][download][revision] = af4754fb00e8a02d77305b111957e5715ee93de2
