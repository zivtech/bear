The Bear Starter Kit was created via the Drush generate-profile command.

Bear 7.x-2.x incorporates some new integrations for assets and embedded media. It also sets the bear_cat theme as the default theme.

##Introduction to Bear

Bear is a Drupal 7 Starter Kit, not a full Drupal 7 distribution. It was originally created as a bootstrapped starting point for Zivtech Drupal development projects, with helpful pre-configured modules and mission critical patches. There should be no need for you to ever update the Bear project itself once it has been installed. Individual contributed modules, libraries, and the Bear Skin theme can be updated as you normally would any other contributed projects after install is complete. You should also feel free to update or disable any included features as needed. Out of the box Bear is ready to start site building and development to create new features as needed to suit your project.

##Bear Installation

To use it:

    drush make build-bear.make /web/path/bear
    cd /web/path/bear
    drush site-install bear --yes --sites-subdir=default --db-url=PUT_YOUR_DB_SPEC_HERE --db-su=DBUSER --db-su-pw=DBPASSWORD --account-name=admin --account-pass=secretsecret

To view your site in a web browser:

    cd sites/default
    drush runserver /

##Bear Installation Notes:

It is recommended that if building bear using Drush from Drupal.org directly that the the libraries, modules, and themes directories be moved to /sites/all/ path location. The Drupal.org packaging script puts these directories in /profiles/bear/, which can cause issues if trying to update contributed modules later on. It is best to move these prior to installation, or you may need to rebuild your Drupal registry if moved after the initial installation process has completed. If you build Bear using the make file method above, you will not have this issue.

Core/Module Updates and Patch Maintenance:
Look at Bear as a starter kit not as a profile that will get updates. Start with Bear, then fork from it. This means you update core and modules on your own. Bear loves patches, and when you do updates you'll want to be sure you don't lose them. We recommend using https://github.com/davereid/drush-patchfile to maintain the patches to core and contributed modules as you do updates. To use this, you can add whatever patches you would like into the patches.make file in the format that you see in the file. In addition, you should move the patches.make file out of profiles/bear and to the top of your webroot (or wherever you configure drush-patchfile to look for it).

##Features
Pre-configured CKEditor WYSIWYG with Media module Integration
Flexslider Views Slideshow
Responsive Bear Skin theme
Responsive Menu via Mean Menu
Sticky Footer option available
Site building and developer tools like Views, Panels, and Devel.

###Contributed Modules

Currently included contributed modules: http://drupalcode.org/project/bear.git/blob/HEAD:/drupal-org.make

###Bear Necessities

Bear Necessities, included in Bear 7.x, configures a WYSIWYG with Media integration. These configurations are included in Bear 8.x without the need for the Bear Necessities feature.

###Bear Habitat

Bear Habitat, now it's own contributed module, sets different enabled modules and settings depending on the environment (prod, test, dev, or local). See Habitat.

###Bear Skin

Bear uses the Bear Skin theme as a base theme. Bear Skin can be easily modified or copied into a custom subtheme.

####Bear Coat
Bear Skin now includes a subtheme called Bear Coat, which is a minimalist theme that is fully responsive with responsive menus and a sticky footer. The Bear Coat subtheme can be used as a template for creating your own Bear Skin subthemes. Bear Coat is planned to be the default theme for the Bear Starter Kit.

Bear Coat has a required JS library, Semantic UI, that is currently unable to be included in the Drupal packaging whitelist due to included fonts with SIL OFL licensing on some fonts. This means we cannot include it in the make file. See the Semantic UI Installation Instructions below.

#####Semantic UI Installation Instructions
1. Clone the repository to sites/all/libraries and name it semantic_ui.

git clone https://github.com/Semantic-Org/Semantic-UI.git semantic_ui
2. Copy the contents of semantic_ui/dist to semantic_ui.

cp -Rf semantic_ui/dist/* semantic_ui/.
Note - You can use drush semantic-ui-download to download the library also, but currently you will still have to copy the files from semantic_ui/dist to semantic_ui for the library to function properly.

##Additional Bear Contributed Modules:

As of bear-7.x-1.5, we have started moving bear’s submodules to their own contributed projects. Eventually all bear dependency features and optional features will be available as separate projects on Drupal.org.

bear_show - Bear Slideshow - https://www.drupal.org/project/bear_show

bear_home - Bear Homepage - https://www.drupal.org/project/bear_home

bear_habitat - Bear Habitat - https://www.drupal.org/project/bear_habitat
