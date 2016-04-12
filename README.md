## What is Bear?

Bear is a Drupal 8 Starter Kit, not a full Drupal 8 distribution. It was originally created as a bootstrapped starting point for Zivtech Drupal development projects, with helpful pre-configured modules and mission critical patches. There should be no need for you to ever update the Bear project itself once it has been installed. Individual contributed modules, libraries, and the Bear Skin theme can be updated as you normally would any other contributed projects after install is complete. You should also feel free to update or disable any included features as needed. Out of the box Bear is ready to create new features as needed to suit your project.

Bear is what we wish Drupal core was out of the box. It contains enhancements and fixes to core. Everything that we use on 80-90% of the sites we build we want to have in Bear so that we have it out of the box when we start a new project.

Bear is not precious! When you start a new site on Bear you are encouraged to hack Bear, to treat it like your own custom code rather than something you will do updates of from upstream. Update core and contrib, but don’t update Bear.

## Installing a Bear Site

    drush make build-a-bear.make /web/path/bear
    cd /web/path/bear
    drush site-install bear --yes --sites-subdir=default --db-url=PUT_YOUR_DB_SPEC_HERE --db-su=DBUSER --db-su-pw=DBPASSWORD --account-name=admin --account-pass=secretsecret

To view your site in a web browser:

    cd sites/default
    drush runserver /

### Installation Notes:

It is recommended that if building bear using Drush from Drupal.org directly that the modules directories be moved to a /modules path location in the webroot. This directory will need to be created prior to moving the modules. The Drupal.org packaging script puts these directories in /profiles/bear/modules, which can cause issues if trying to update contributed modules later on. It is best to move these prior to installation, or you may need to rebuild your Drupal registry if they were moved after the initial installation process has completed. If you build Bear using the make file method above, you will not have this issue.

## Core/Module Updates and Patch Maintenance:

Look at Bear as a starter kit not as a profile that will get updates. Start with Bear, then fork from it. This means you update core and modules on your own. Bear loves patches, and when you do updates you'll want to be sure you don't lose them. We recommend using https://github.com/davereid/drush-patchfile to maintain the patches to core and contributed modules as you do updates. To use this, you can add whatever patches you would like into the patches.make file in the format that you see in the file. In addition, you should move the patches.make file out of profiles/bear and to the top of your webroot (or wherever you configure drush-patchfile to look for it).

## What is Bear Skin
Bear Skin is the theme that comes with Bear. It is designed to be a great starting point for practically any site. It should look good out of the box and be easily customized. Bear Skin is a separate project that Bear includes. You do not have to use Bear Skin to use Bear.

## Why is it called Bear?
No huge reason. It sounds like ‘bare’ and it gives you a bare site ready to make your own with nothing you should need to remove to get started. Also we have a picture of a big bear in our office courtesy of http://butcherpress.com/golden-paw.
