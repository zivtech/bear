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
projects[] = bear_habitat
projects[] = block_class
projects[] = breadcrumbs_by_path
projects[] = breakpoints
projects[] = chosen
projects[] = coffee
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
projects[file_entity][version] = "2.x-dev"
projects[] = habitat
projects[] = jquery_update
projects[] = libraries
projects[] = link
projects[linkit][version] = "2.x-dev"
projects[media][version] = "2.x-dev"
projects[media_youtube][version] = "3.x-dev"
projects[] = menu_block
projects[] = menu_expanded
projects[] = module_filter
projects[] = multiform
projects[] = page_manager_templates
projects[] = panels
projects[panelizer][version] = "3.x-dev"
projects[] = pathauto
projects[] = picture
projects[] = plupload
projects[] = redirect
projects[] = strongarm
projects[] = styleguide
projects[] = token
projects[] = xmlsitemap
; @see https://www.drupal.org/node/1036962#comment-9255301
projects[views][patch][] = "http://www.drupal.org/files/issues/1036962-views-ajax-destination-65.patch"
projects[] = views_bulk_operations
projects[] = views_slideshow
projects[wysiwyg][version] = "2.x-dev"

; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3.3/ckeditor_4.3.3_full.zip"
libraries[chosen][download][type] = "get"
libraries[chosen][download][url] = "https://github.com/harvesthq/chosen/releases/download/1.4.2/chosen_v1.4.2.zip"
libraries[plupload][download][type] = "get"
libraries[plupload][download][url] = "https://github.com/moxiecode/plupload/archive/v1.5.8.zip"
libraries[plupload][patch][] = "http://drupal.org/files/issues/plupload-1_5_8-rm_examples-1903850-16.patch"

; Themes
projects[zen][type] = "theme"
projects[bear_skin][type] = "theme"
projects[bear_skin][download][type] = git
projects[bear_skin][download][url] = http://git.drupal.org/project/bear_skin.git
projects[bear_skin][download][branch] = 7.x-2.x
