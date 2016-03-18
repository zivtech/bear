; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 7.x
api = 2

; Patches should now all be handled by patches.make file thanks to https://bitbucket.org/davereid/drush-patchfile.

; Specify default subdirectory for projects
defaults[projects][subdir] = "contrib"

; Modules
projects[] = admin_menu
projects[] = admin_views
projects[] = advagg
projects[asset][version] = 1.0-beta4
; @see https://www.drupal.org/node/2480503#comment-10332267
projects[asset][patch][] = "https://www.drupal.org/files/issues/2480503-1-asset-add_more_icons-7.x-1.0-beta4.patch"
; @see https://www.drupal.org/node/2174613#comment-10509492
projects[asset][patch][] = "https://www.drupal.org/files/issues/asset-youtube-video-2174613-6--beta4.patch"
; @see https://www.drupal.org/node/2612602#comment-10550910
projects[asset][patch][] = https://www.drupal.org/files/issues/2612602-3-asset-inline_entity_form_integration.patch
projects[] = bear_habitat
projects[] = breadcrumbs_by_path
projects[] = breakpoints
projects[] = chosen
projects[] = coffee
; @see https://www.drupal.org/node/2463187#comment-9779355
projects[ckeditor][patch][] = "https://www.drupal.org/files/issues/allow-custom-icon-paths-2463187-1.patch"
projects[] = ctools
projects[] = date
projects[] = devel
projects[] = diff
projects[] = entity
projects[] = entity_view_mode
projects[] = entitycache
projects[] = entityreference
projects[] = environment_indicator
projects[] = features
projects[] = fences
projects[] = field_collection
projects[] = field_group

; Must specify type since it is still a sandbox.
projects[field_help_helper][type] = module
projects[field_help_helper][download][type] = git
projects[field_help_helper][download][url] = git://drupalcode.org/sandbox/grndlvl/2682855.git
projects[field_help_helper][download][branch] = 7.x-1.x
projects[field_help_helper][download][revision] = 45507e0cd354565643f4abd294ca440fa61a0b15

projects[] = habitat
projects[] = inline_entity_form
projects[] = jquery_update
; We are using jPlayer dev version so that it can correctly detect the jPlayer
; library without additional human intervention beyond downloading the package.
; @see https://www.drupal.org/node/2376929#comment-9410689
projects[jplayer][version] = "2.x-dev"
projects[] = libraries
projects[] = link
projects[linkit][version] = "2.x-dev"
projects[] = menu_block
projects[] = menu_expanded
projects[] = module_filter
projects[oembed][version] = "1.x-dev"
projects[] = page_manager_templates
projects[] = panels
projects[panelizer][version] = "3.x-dev"
projects[paragraphs][version] = "1.0-rc4"
projects[] = pathauto
projects[] = picture
projects[] = redirect
projects[required_on_publish][type] = module
projects[required_on_publish][download][type] = git
projects[required_on_publish][download][url] = git://git.drupal.org/sandbox/abhishek_pareek/2549931.git
projects[required_on_publish][download][branch] = 7.x-1.x
projects[] = responsive_menus
projects[] = save_draft
projects[] = strongarm
projects[] = styleguide
projects[] = token
projects[] = xmlsitemap
projects[] = views
projects[] = views_bulk_operations
projects[] = views_slideshow

; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.2/ckeditor_3.6.6.2.zip"
libraries[chosen][download][type] = "get"
libraries[chosen][download][url] = "https://github.com/harvesthq/chosen/releases/download/1.4.2/chosen_v1.4.2.zip"
libraries[sidr][download][type] = "get"
libraries[sidr][download][url] = "https://github.com/artberri/sidr-package/archive/1.2.1.zip"

; Themes
projects[bear_skin][version] = "3.x-dev"
