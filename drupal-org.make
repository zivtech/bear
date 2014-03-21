; This drupal-org.make file downloads and applies all patches to contrib modules, themes, and 3rd party libraries.

core = 7.x
api = 2

; Make sure to add new patches to the /patches folder when adding or updating patches below.

; Modules
projects[admin_menu][version] = "3.0-rc4"
projects[admin_views][version] = "1.2"
projects[advagg][version] = "2.4"
projects[breadcrumbs_by_path] = "1.0-alpha11"
projects[coffee][version] = "1.0"
projects[ctools][version] = "1.4"
projects[date][version] = "2.7"
projects[devel][version] = "1.4"
projects[diff][version] = "3.2"
projects[entity][version] = "1.3"
projects[entity][patch][] = "http://drupal.org/files/2003826-16-check_path_index_uri.patch"
projects[entity_view_mode][version] = "1.0-rc1"
projects[entitycache][version] = "1.2"
projects[entityreference][version] = "1.1"
projects[features][version] = "2.0"
projects[features][patch][] = "http://drupal.org/files/766264-25-alter-override.patch"
projects[field_group][version] = "1.3"
projects[file_entity][version] = "2.x-dev"
projects[habitat][version] = "1.x-dev"
projects[libraries][version] = "2.2"
projects[link][version] = "1.2"
projects[linkit][version] = "2.6"
projects[media][version] = "2.x-dev"
projects[media_youtube][version] = "2.x-dev"
projects[menu_block][version] = "2.3"
projects[menu_position][version] = "1.1"
projects[panels][version] = "3.3"
projects[pathauto][version] = "1.2"
projects[redirect][version] = "1.0-rc1"
projects[strongarm][version] = "2.0"
projects[styleguide][version] = "1.1"
projects[token][version] = "1.5"
projects[xmlsitemap][version] = "2.0-rc2"
projects[views][version] = "3.7"
projects[views][patch][] = "http://drupal.org/files/views-fix-destination-link-for-ajax-1036962-29.patch"
projects[views_bulk_operations][version] = "3.1"
projects[plupload][version] = "1.1"
projects[multiform][version] = "1.0"
projects[flexslider][version] = "2.0-alpha1"
projects[flexslider_views_slideshow][version] = "2.x-dev"
projects[jquery_update][version] = "2.3"
projects[module_filter][version] = "1.7"
projects[views_slideshow][version] = "3.0"
projects[wysiwyg][version] = "2.x-dev"

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
