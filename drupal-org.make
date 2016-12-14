; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

; For dev releases, please use git download type and pin to a specific git revision.
; This will ensure Bear always builds with the same versions of it's dependencies in a given release.

; Modules.
projects[admin_toolbar][version] = 1.17

projects[ckeditor_media_embed][version] = 1.0

projects[coffee][version] = 1.0-beta2

projects[ctools][version] = 3.0-alpha27

projects[devel][version] = 1.0-alpha1

projects[diff][version] = 1.0-beta2

projects[ds][version] = 2.6

projects[easy_breadcrumb][version] = 1.5

projects[entity_reference_revisions][version] = 1.0

projects[field_group][version] = 1.0-rc4

projects[field_help_helper][version] = 1.0

projects[google_analytics][version] = 2.1

projects[layout_plugin][version] = 1.0-alpha23

projects[menu_link_config][download][type] = git
projects[menu_link_config][download][url] = http://git.drupal.org/project/menu_link_config.git
projects[menu_link_config][download][branch] = 8.x-1.x
projects[menu_link_config][download][revision] = e424f20fbf531a24d93acdf91f34821598fb4c51
; @see https://www.drupal.org/node/2687913#comment-10972551
projects[menu_link_config][patch][] = https://www.drupal.org/files/issues/2687913-1-config_menu_link-front-default-value.patch

projects[paragraphs][version] = 1.0

projects[pathauto][version] = 1.0-beta1

projects[redirect][version] = 1.0-alpha1

projects[simple_sitemap][version] = 2.7

projects[stage_file_proxy][version] = 1.0-alpha1

projects[token][version] = 1.0-beta2

projects[components][version] = 1.0

; Libraries.
libraries[ckeditor][download][type] = file
libraries[ckeditor][download][url] = https://github.com/ckeditor/ckeditor-dev/archive/release/4.5.x.zip

; Themes.
projects[bear_skin][version] = 2.2
