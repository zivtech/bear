; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

; For dev releases, please use git download type and pin to a specific git revision.
; This will ensure Bear always builds with the same versions of it's dependencies in a given release.

; Modules.
projects[admin_toolbar][download][type] = git
projects[admin_toolbar][download][url] = http://git.drupal.org/project/admin_toolbar.git
projects[admin_toolbar][download][branch] = 8.x-1.x
projects[admin_toolbar][download][revision] = 3993f41a4a1821c58d3b6572f48f32a6ac4c2a8e

projects[ckeditor_media_embed][type] = module
projects[ckeditor_media_embed][download][type] = git
projects[ckeditor_media_embed][download][url] = http://git.drupal.org/project/ckeditor_media_embed.git
projects[ckeditor_media_embed][download][branch] = 8.x-1.x
projects[ckeditor_media_embed][download][revision] = 131e53bea67ae73fec3f6a0fb8dd99bade80d663

projects[coffee][version] = "1.0-beta1"

projects[ctools][version] = "3.0-alpha23"

projects[devel][download][type] = git
projects[devel][download][url] = http://git.drupal.org/project/devel.git
projects[devel][download][branch] = 8.x-1.x
projects[devel][download][revision] = 34538908ad46551c4251556b678d36baa3c12083

projects[diff][download][type] = git
projects[diff][download][url] = http://git.drupal.org/project/diff.git
projects[diff][download][branch] = 8.x-1.x
projects[diff][download][revision] = 2216ce763fecb03d441231e1b2b3fdddeb761b53
projects[diff][patch][] = https://www.drupal.org/files/issues/remove_entity_dependency-2711609-3.patch

projects[entity_reference_revisions][download][type] = git
projects[entity_reference_revisions][download][url] = http://git.drupal.org/project/entity_reference_revisions.git
projects[entity_reference_revisions][download][branch] = 8.x-1.x
projects[entity_reference_revisions][download][revision] = 1074d9003539713a24315e5e99e1f3dac58025f3

projects[field_group][download][type] = git
projects[field_group][download][url] = http://git.drupal.org/project/field_group.git
projects[field_group][download][branch] = 8.x-1.x
projects[field_group][download][revision] = 0d1884eb33e597cfe77daad9c35757b079b3ef3d

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
projects[paragraphs][download][revision] = 4adb7aa041c112a672ee38c30fe8db2334c5d166

projects[pathauto][download][type] = git
projects[pathauto][download][url] = http://git.drupal.org/project/pathauto.git
projects[pathauto][download][branch] = 8.x-1.x
projects[pathauto][download][revision] = c4952e15e2906ff2040bc01f5e8f37d23950269e

projects[simple_sitemap][version] = "1.2"

projects[token][version] = "1.0-alpha2"

; Libraries.

; Themes.
projects[bear_skin][type] = "theme"
projects[bear_skin][download][type] = git
projects[bear_skin][download][url] = http://git.drupal.org/project/bear_skin.git
projects[bear_skin][download][branch] = 8.x-1.x
projects[bear_skin][download][revision] = af4754fb00e8a02d77305b111957e5715ee93de2
