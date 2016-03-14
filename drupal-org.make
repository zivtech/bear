; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 7.x
api = 2

; Patches should now all be handled by patches.make file thanks to https://bitbucket.org/davereid/drush-patchfile.

; Modules
projects[] = admin_menu
projects[admin_menu][subdir] = contrib
projects[] = admin_views
projects[admin_views][subdir] = contrib
projects[] = advagg
projects[advagg][subdir] = contrib
projects[asset][version] = 1.0-beta4
projects[asset][subdir] = contrib
; @see https://www.drupal.org/node/2480503#comment-10332267
projects[asset][patch][] = "https://www.drupal.org/files/issues/2480503-1-asset-add_more_icons-7.x-1.0-beta4.patch"
; @see https://www.drupal.org/node/2174613#comment-10509492
projects[asset][patch][] = "https://www.drupal.org/files/issues/asset-youtube-video-2174613-6--beta4.patch"
; @see https://www.drupal.org/node/2612602#comment-10550910
projects[asset][patch][] = https://www.drupal.org/files/issues/2612602-3-asset-inline_entity_form_integration.patch
projects[] = bear_habitat
projects[bear_habitat][subdir] = contrib
projects[] = breadcrumbs_by_path
projects[breadcrumbs_by_path][subdir] = contrib
projects[] = breakpoints
projects[breakpoints][subdir] = contrib
projects[] = chosen
projects[chosen][subdir] = contrib
projects[] = coffee
projects[coffee][subdir] = contrib
; @see https://www.drupal.org/node/2463187#comment-9779355
projects[ckeditor][patch][] = "https://www.drupal.org/files/issues/allow-custom-icon-paths-2463187-1.patch"
projects[ckeditor][subdir] = contrib
projects[] = ctools
projects[ctools][subdir] = contrib
projects[] = date
projects[date][subdir] = contrib
projects[] = devel
projects[devel][subdir] = contrib
projects[] = diff
projects[diff][subdir] = contrib
projects[] = entity
projects[entity][subdir] = contrib
projects[] = entity_view_mode
projects[entity_view_mode][subdir] = contrib
projects[] = entitycache
projects[entitycache][subdir] = contrib
projects[] = entityreference
projects[entityreference][subdir] = contrib
projects[] = environment_indicator
projects[environment_indicator][subdir] = contrib
projects[] = features
projects[features][subdir] = contrib
projects[] = fences
projects[fences][subdir] = contrib
projects[] = field_collection
projects[field_collection][subdir] = contrib
projects[] = field_group
projects[field_group][subdir] = contrib

; Must specify type since it is still a sandbox.
projects[field_help_helper][type] = module
projects[field_help_helper][download][type] = git
projects[field_help_helper][download][url] = git://drupalcode.org/sandbox/grndlvl/2682855.git
projects[field_help_helper][download][branch] = 7.x-1.x
projects[field_help_helper][download][revision] = 45507e0cd354565643f4abd294ca440fa61a0b15
projects[field_help_helper][subdir] = contrib

projects[] = habitat
projects[habitat][subdir] = contrib
projects[] = inline_entity_form
projects[inline_entity_form][subdir] = contrib
projects[] = jquery_update
projects[jquery_update][subdir] = contrib
; We are using jPlayer dev version so that it can correctly detect the jPlayer
; library without additional human intervention beyond downloading the package.
; @see https://www.drupal.org/node/2376929#comment-9410689
projects[jplayer][version] = "2.x-dev"
projects[jPlayer][subdir] = contrib
projects[] = libraries
projects[libraries][subdir] = contrib
projects[] = link
projects[link][subdir] = contrib
projects[linkit][version] = "2.x-dev"
projects[linkit][subdir] = contrib
projects[] = menu_block
projects[menu_block][subdir] = contrib
projects[] = menu_expanded
projects[menu_expanded][subdir] = contrib
projects[] = module_filter
projects[module_filter][subdir] = contrib
projects[oembed][version] = "1.x-dev"
projects[oembed][subdir] = contrib
projects[] = page_manager_templates
projects[page_manager_templates][subdir] = contrib
projects[] = panels
projects[panels][subdir] = contrib
projects[panelizer][version] = "3.x-dev"
projects[panelizer][subdir] = contrib
projects[paragraphs][version] = "1.0-rc4"
projects[paragraphs][subdir] = contrib
projects[] = pathauto
projects[pathauto][subdir] = contrib
projects[] = picture
projects[picture][subdir] = contrib
projects[] = redirect
projects[redirect][subdir] = contrib
projects[] = responsive_menus
projects[responsive_menus][subdir] = contrib
projects[] = strongarm
projects[strongarm][subdir] = contrib
projects[] = styleguide
projects[styleguide][subdir] = contrib
projects[] = token
projects[token][subdir] = contrib
projects[] = xmlsitemap
projects[xmlsitemap][subdir] = contrib
projects[] = views
projects[views][subdir] = contrib
projects[] = views_bulk_operations
projects[views_bulk_operations][subdir] = contrib
projects[] = views_slideshow
projects[views_slideshow][subdir] = contrib

; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.2/ckeditor_3.6.6.2.zip"
libraries[chosen][download][type] = "get"
libraries[chosen][download][url] = "https://github.com/harvesthq/chosen/releases/download/1.4.2/chosen_v1.4.2.zip"
libraries[sidr][download][type] = "get"
libraries[sidr][download][url] = "https://github.com/artberri/sidr-package/archive/1.2.1.zip"

; Themes
projects[bear_skin][version] = "3.x-dev"
projects[bear_skin][subdir] = contrib
