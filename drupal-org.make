; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

core = 7.x
api = 2

; Patches should now all be handled by patches.make file thanks to https://bitbucket.org/davereid/drush-patchfile.

; Specify default subdirectory for projects
defaults[projects][subdir] = "contrib"

; Modules
projects[admin_menu][version] = "3.0-rc5"
projects[admin_views][version] = "1.4"
projects[advagg][version] = "2.7"
projects[bear_habitat][version] = "1.x-dev"
projects[block_class][version] = "2.1"
projects[breadcrumbs_by_path] = "1.0-alpha12"
projects[breakpoints][version] = "1.3"
projects[chosen][version] = "2.0-beta4"
projects[coffee][version] = "2.2"
projects[ctools][version] = "1.7"
projects[date][version] = "2.8"
projects[devel][version] = "1.5"
projects[diff][version] = "3.2"
projects[entity][version] = "1.6"
projects[entity_view_mode][version] = "1.0-rc1"
projects[entitycache][version] = "1.2"
projects[entityreference][version] = "1.1"
projects[environment_indicator][version] = "2.5"
projects[features][version] = "2.4"
; @see https://www.drupal.org/node/766264#comment-8818877
projects[features][patch][] = "http://www.drupal.org/files/issues/alter_overrides-766264-45.patch"
projects[fences][version] = "1.0"
projects[field_collection][version] = "1.0-beta8"
projects[field_group][version] = "1.4"
projects[file_entity][version] = "2.x-dev"
projects[habitat][version] = "1.0"
projects[jquery_update][version] = "2.5"
projects[libraries][version] = "2.2"
projects[link][version] = "1.3"
projects[linkit][version] = "2.x-dev"
projects[media][version] = "2.x-dev"
projects[media_youtube][version] = "2.x-dev"
projects[menu_block][version] = "2.5"
projects[menu_expanded][version] = "1.0-beta1"
projects[menu_position][version] = "1.1"
projects[module_filter][version] = "2.0"
projects[multiform][version] = "1.1"
projects[page_manager_templates][version] = "1.x-dev"
projects[panels][version] = "3.5"
projects[panelizer][version] = "3.x-dev"
projects[pathauto][version] = "1.2"
projects[picture][version] = "2.9"
projects[plupload][version] = "1.7"
projects[redirect][version] = "1.0-rc1"
projects[strongarm][version] = "2.0"
projects[styleguide][version] = "1.1"
projects[token][version] = "1.6"
projects[xmlsitemap][version] = "2.2"
projects[views][version] = "3.10"
; @see https://www.drupal.org/node/1036962#comment-9255301
projects[views][patch][] = "http://www.drupal.org/files/issues/1036962-views-ajax-destination-65.patch"
projects[views_bulk_operations][version] = "3.2"
projects[views_slideshow][version] = "3.1"
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

