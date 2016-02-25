# Bear Included 3rd Party Libraries

Bear 7 includes some 3rd Party Libraries out of the box.

- [CKEditor](http://ckeditor.com/)
- [Chosen](https://github.com/harvesthq/chosen/releases)
- [SIDR](https://github.com/artberri/sidr-package/releases)


Bear 7 also has some optional 3rd Party Libraries you can add to get more functionality out of Bear and Bear Coat.

- [jPlayer](https://github.com/happyworm/jPlayer/releases)
- [Semantic UI](https://github.com/Semantic-Org/Semantic-UI/releases)


## Enabling Semantic UI
This theme is setup to use Semantic UI for many UI/UX elements. In order to enable, you must have [Libraries API](https://www.drupal.org/project/libraries) installed as well as [jQuery Update](https://www.drupal.org/project/jquery_update/) enabled and set to use 1.7 in the jQuery Update configuration.

You also must have the [Semantic UI module](https://www.drupal.org/project/semantic_ui_api) and library installed. Run
`drush pm-enable semantic_ui_api`
to install both.

If you are installing the Semantic UI library manually, the path should be look like the following:

![Semantic UI Library Path](http://i65.tinypic.com/15yhrr.png)

Once all these elements have been installed, go the Bear Coat's Settings page (/admin/appearance/settings/bear_coat), check the box next to "Include Semantic UI" and save.
