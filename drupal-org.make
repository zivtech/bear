; This drupal-org.make file downloads and applies all patches to contrib modules, themes, and 3rd party libraries.

core = 7.x
api = 2

; Make sure to add new patches to the /patches folder when adding or updating patches below.

; Modules
projects[admin_menu][version] = "3.0-rc4"
projects[admin_menu][subdir] = contrib
projects[admin_views][version] = "1.2"
projects[admin_views][subdir] = contrib
projects[advagg][version] = "2.4"
projects[advagg][subdir] = contrib
projects[breadcrumbs_by_path] = "1.0-alpha11"
projects[breadcrumbs_by_path][subdir] = contrib
projects[coffee][version] = "2.2"
projects[coffee][subdir] = contrib
projects[ctools][version] = "1.4"
projects[ctools][subdir] = contrib
projects[date][version] = "2.8"
projects[date][subdir] = contrib
projects[devel][version] = "1.5"
projects[devel][subdir] = contrib
projects[diff][version] = "3.2"
projects[diff][subdir] = contrib
projects[entity][version] = "1.5"
projects[entity][subdir] = contrib
projects[entity][patch][] = "http://drupal.org/files/2003826-16-check_path_index_uri.patch"
projects[entity_view_mode][version] = "1.0-rc1"
projects[entity_view_mode][subdir] = contrib
projects[entitycache][version] = "1.2"
projects[entitycache][subdir] = contrib
projects[entityreference][version] = "1.1"
projects[entityreference][subdir] = contrib
projects[features][version] = "2.0"
projects[features][subdir] = contrib
projects[features][patch][] = "http://drupal.org/files/766264-25-alter-override.patch"
projects[field_collection][version] = "1.0-beta7"
projects[field_collection][subdir] = contrib
projects[field_group][version] = "1.3"
projects[field_group][subdir] = contrib
projects[file_entity][version] = "2.x-dev"
projects[file_entity][subdir] = contrib
projects[flexslider][version] = "2.0-alpha1"
projects[flexslider][subdir] = contrib
projects[flexslider_views_slideshow][version] = "2.x-dev"
projects[flexslider_views_slideshow][subdir] = contrib
projects[habitat][version] = "1.0"
projects[habitat][subdir] = contrib
projects[jquery_update][version] = "2.4"
projects[jquery_update][subdir] = contrib
projects[libraries][version] = "2.2"
projects[libraries][subdir] = contrib
projects[link][version] = "1.2"
projects[link][subdir] = contrib
projects[linkit][version] = "2.x-dev"
projects[linkit][subdir] = contrib
projects[linkit][patch][] = "http://www.drupal.org/files/issues/modal-hiding-behind-panels-modal-2312851-1.patch"
projects[media][version] = "2.x-dev"
projects[media][subdir] = contrib
projects[media_youtube][version] = "2.x-dev"
projects[media_youtube][subdir] = contrib
projects[menu_block][version] = "2.4"
projects[menu_block][subdir] = contrib
projects[menu_position][version] = "1.1"
projects[menu_position][subdir] = contrib
projects[module_filter][version] = "1.8"
projects[module_filter][subdir] = contrib
projects[multiform][version] = "1.0"
projects[multiform][subdir] = contrib
projects[page_manager_templates][version] = "1.x-dev"
projects[page_manager_templates][subdir] = contrib
projects[panels][version] = "3.4"
projects[panels][subdir] = contrib
projects[panelizer][version] = "3.x-dev"
projects[panelizer][subdir] = contrib
projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = contrib
projects[plupload][version] = "1.6"
projects[plupload][subdir] = contrib
projects[redirect][version] = "1.0-rc1"
projects[redirect][subdir] = contrib
projects[strongarm][version] = "2.0"
projects[strongarm][subdir] = contrib
projects[styleguide][version] = "1.1"
projects[styleguide][subdir] = contrib
projects[token][version] = "1.5"
projects[token][subdir] = contrib
projects[xmlsitemap][version] = "2.0"
projects[xmlsitemap][subdir] = contrib
projects[views][version] = "3.8"
projects[views][subdir] = contrib
projects[views][patch][] = "http://drupal.org/files/views-fix-destination-link-for-ajax-1036962-29.patch"
projects[views_bulk_operations][version] = "3.2"
projects[views_bulk_operations][subdir] = contrib
projects[views_slideshow][version] = "3.0"
projects[views_slideshow][subdir] = contrib
projects[wysiwyg][version] = "2.x-dev"
projects[wysiwyg][subdir] = contrib

; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3.3/ckeditor_4.3.3_full.zip"


libraries[plupload][download][type] = "get"
libraries[plupload][download][url] = "https://github.com/moxiecode/plupload/archive/v1.5.8.zip"
libraries[plupload][patch][] = "http://drupal.org/files/issues/plupload-1_5_8-rm_examples-1903850-16.patch"

libraries[flexslider][download][type] = "get"
libraries[flexslider][download][url] = "https://github.com/woothemes/FlexSlider/archive/version/2.1.zip"

; Themes
projects[zen][type] = "theme"
projects[bear_skin][type] = "theme"
projects[shiny][type] = "theme"
