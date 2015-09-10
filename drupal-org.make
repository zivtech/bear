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
projects[] = asset
projects[] = bear_habitat
projects[] = block_class
projects[] = breadcrumbs_by_path
projects[] = breakpoints
projects[] = chosen
projects[] = coffee
projects[] = ckeditor
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
projects[] = habitat
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
projects[] = multiform
projects[] = page_manager_templates
projects[] = panels
projects[panelizer][version] = "3.x-dev"
projects[] = pathauto
projects[] = picture
projects[] = redirect
projects[] = responsive_menus
; @see https://www.drupal.org/node/2568763#comment-10331417
projects[semantic_ui_api][patch][] = "http://www.drupal.org/files/issues/2568763-2-semantic_ui_api-detect_path.patch"
projects[] = strongarm
projects[] = styleguide
projects[] = token
projects[] = xmlsitemap
; @see https://www.drupal.org/node/1036962#comment-9255301
projects[views][patch][] = "http://www.drupal.org/files/issues/1036962-views-ajax-destination-65.patch"
projects[] = views_bulk_operations
projects[] = views_slideshow

; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.2/ckeditor_3.6.6.2.zip"
libraries[chosen][download][type] = "get"
libraries[chosen][download][url] = "https://github.com/harvesthq/chosen/releases/download/1.4.2/chosen_v1.4.2.zip"
libraries[sidr][download][type] = "get"
libraries[sidr][download][url] = "https://github.com/artberri/sidr-package/archive/1.2.1.zip"
libraries[jplayer][download][type] = "get"
libraries[jplayer][download][url] = "https://github.com/happyworm/jPlayer/archive/2.9.2.tar.gz"

; Themes
projects[zen][type] = "theme"
projects[bear_skin][type] = "theme"
projects[bear_skin][download][type] = git
projects[bear_skin][download][url] = http://git.drupal.org/project/bear_skin.git
projects[bear_skin][download][branch] = 7.x-2.x
