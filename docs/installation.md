#Bear Installation

There are 2 ways we recommend to install the Bear installation profile.

##1. Install Bear with Drush Make. _(recommended for developers)_

    drush make build-bear.make /web/path/bear
    cd /web/path/bear
    drush site-install bear --yes --sites-subdir=default --db-url=PUT_YOUR_DB_SPEC_HERE --db-su=DBUSER --db-su-pw=DBPASSWORD --account-name=admin --account-pass=secretsecret

To view your site in a web browser:

    cd sites/default
    drush runserver /

##2. Install Bear from Drupal.org Tarball or Zip file. _(recommended for beginners)_

    Download bear from Drupal.org. This is a full Drupal install with the Bear profile added.
    Unpack the archive file so that it becomes your www root folder.
    Install bear profile from the Drupal install page instead of Minimal or Standard profiles.

#Bear Installation Notes:

It is recommended that if building bear using Drush from Drupal.org directly that the modules directories be moved to a /modules path location in the webroot. This directory will need to be created prior to moving the modules. The Drupal.org packaging script puts these directories in /profiles/bear/modules, which can cause issues if trying to update contributed modules later on. It is best to move these prior to installation, or you may need to rebuild your Drupal registry if they were moved after the initial installation process has completed. If you build Bear using the make file method above, you will not have this issue.

##Core/Module Updates and Patch Maintenance:
Look at Bear as a starter kit not as a profile that will get updates. Start with Bear, then fork from it. This means you update core and modules on your own. Bear loves patches, and when you do updates you'll want to be sure you don't lose them. We recommend using https://github.com/davereid/drush-patchfile to maintain the patches to core and contributed modules as you do updates. To use this, you can add whatever patches you would like into the patches.make file in the format that you see in the file. In addition, you should move the patches.make file out of profiles/bear and to the top of your webroot (or wherever you configure drush-patchfile to look for it).
