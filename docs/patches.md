#Bear Patches and Patching

Bear includes some crucial patches to Drupal core, contributed modules, and contributed themes. These patches are also included in a [patches.make](http://cgit.drupalcode.org/bear/tree/patches.make) file, which uses the [Drush Patch File](https://bitbucket.org/davereid/drush-patchfile) method of applying patches.

#Current Included Patches
##Drupal Core
When a page has multilple URL aliases, treat one as canonical.
See https://www.drupal.org/node/1934086#comment-7137850  
http://drupal.org/files/drupal-1934086-path_load_order-1.patch

When a page has multiple menu items, treat one as canonical.
See https://www.drupal.org/node/1875824#comment-7420862  
http://drupal.org/files/core-1875824-3-d7.patch

Prevent AJAX errors on autocompletes.
See https://www.drupal.org/node/1232416#comment-8262487  
https://www.drupal.org/files/issues/autocomplete-1232416-205-7x.patch

Fix a PHP notice relating to file uploads.
See https://www.drupal.org/node/1903010#comment-8415695  
http://drupal.org/files/issues/drupal-undefinedindex_fileupload-1903010-4.patch

When configuring fields with a cardinality > 1, provide an option to not use drag and drop tables.
See https://www.drupal.org/node/2264739  
http://drupal.org/files/issues/death-to-tabledrag.patch

Allow schema-relative URLs.
See https://www.drupal.org/node/1783278#comment-9735933  
https://www.drupal.org/files/issues/schema-relative-1783278-17-D7-do-not-test.patch

Prevent alter hooks from making Features appear as overridden.
See https://www.drupal.org/node/766264#comment-8818877
http://www.drupal.org/files/issues/alter_overrides-766264-45.patch

Type cast the class attribute to array.
See https://www.drupal.org/node/2630530#comment-10645488
https://www.drupal.org/files/issues/2630530-2-bear_skin-handle_class_attribute.patch

##Contributed Modules
####Asset
See https://www.drupal.org/node/2480503#comment-10332267  
https://www.drupal.org/files/issues/2480503-1-asset-add_more_icons-7.x-1.0-beta4.patch

See https://www.drupal.org/node/2174613#comment-10509492  
https://www.drupal.org/files/issues/asset-youtube-video-2174613-6--beta4.patch

See https://www.drupal.org/node/2612602#comment-10550910  
https://www.drupal.org/files/issues/2612602-3-asset-inline_entity_form_integration.patch

####CKEditor
See https://www.drupal.org/node/2463187#comment-9779355  
https://www.drupal.org/files/issues/allow-custom-icon-paths-2463187-1.patch


##Contributed Themes
####Bear Skin
See http://www.drupal.org/node/2580405#comment-10412829  
https://www.drupal.org/files/issues/2580405-2-Add_asset_template_override.patch
