; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 8.x
api = 2

; Specify default subdirectory for projects.
defaults[projects][subdir] = contrib

; Please use git download type and pin to a specific git revision.
; This will ensure Bear always builds with the same versions of it's dependencies in a given release.
; Modules.
projects[admin_toolbar][download][type] = git
projects[admin_toolbar][download][url] = http://git.drupal.org/project/admin_toolbar.git
projects[admin_toolbar][download][branch] = 8.x-1.x
projects[admin_toolbar][download][revision] = ce0a2f844820473a1b0968abe1d6fb7c92611430

projects[big_pipe][download][type] = git
projects[big_pipe][download][url] = https://git.drupal.org/project/big_pipe.git
projects[big_pipe][download][branch] = 8.x-1.x
projects[big_pipe][download][revision] = b00dc84c727f242a1fb21a9b9df7de3b9f3589f0

projects[coffee][download][type] = git
projects[coffee][download][url] = http://git.drupal.org/project/coffee.git
projects[coffee][download][branch] = 8.x-1.x
projects[coffee][download][revision] = 6689904140fbdf578031ac977e912a1ce253cb71
; @see https://www.drupal.org/node/2486843#comment-10268935
projects[coffee][patch][] = http://www.drupal.org/files/issues/coffee-fix_once-2486843-2.patch

projects[ctools][version] = "3.0-alpha23"

projects[devel][download][type] = git
projects[devel][download][url] = http://git.drupal.org/project/devel.git
projects[devel][download][branch] = 8.x-1.x
projects[devel][download][revision] = bb45a4e5e1c0f8f83ec05b52b3d7329a1ca77dec

projects[diff][download][type] = git
projects[diff][download][url] = http://git.drupal.org/project/diff.git
projects[diff][download][branch] = 8.x-1.x
projects[diff][download][revision] = 7f8f95b750f5da2b12f80a83cb4f739d421478e3

projects[entity_reference_revisions][download][type] = git
projects[entity_reference_revisions][download][url] = http://git.drupal.org/project/entity_reference_revisions.git
projects[entity_reference_revisions][download][branch] = 8.x-1.x
projects[entity_reference_revisions][download][revision] = ef9e2c1e0290c7d3521eb375f981fb07c3959341

projects[field_group][download][type] = git
projects[field_group][download][url] = http://git.drupal.org/project/field_group.git
projects[field_group][download][branch] = 8.x-1.x
projects[field_group][download][revision] = 0d1884eb33e597cfe77daad9c35757b079b3ef3d

projects[layout_plugin][version] = "1.0-alpha22"

projects[page_manager][version] = "1.0-alpha23"

projects[panels][version] = "3.0-beta4"

projects[paragraphs][download][type] = git
projects[paragraphs][download][url] = http://git.drupal.org/project/paragraphs.git
projects[paragraphs][download][branch] = 8.x-1.x
projects[paragraphs][download][revision] = 916b9bb33dfa7d7c32f55272752324da2affe6f0

projects[ckeditor_media_embed][type] = module
projects[ckeditor_media_embed][download][type] = git
projects[ckeditor_media_embed][download][url] = http://git.drupal.org/project/ckeditor_media_embed.git
projects[ckeditor_media_embed][download][branch] = 8.x-1.x
projects[ckeditor_media_embed][download][revision] = bde51cedf69752b2d0100e16a14aa10577e0d11f

projects[pathauto][download][type] = git
projects[pathauto][download][url] = http://git.drupal.org/project/pathauto.git
projects[pathauto][download][branch] = 8.x-1.x
projects[pathauto][download][revision] = f6d2b6ad34fb7b49f4a750fbdf80bf5fa7d49610

projects[simple_sitemap][version] = "1.2"

projects[token][version] = "1.0-alpha2"

; Libraries.

; Themes.
projects[bear_skin][type] = "theme"
projects[bear_skin][download][type] = git
projects[bear_skin][download][url] = http://git.drupal.org/project/bear_skin.git
projects[bear_skin][download][branch] = 8.x-1.x
projects[bear_skin][download][revision] = af4754fb00e8a02d77305b111957e5715ee93de2
