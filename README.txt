The Bear Starter Kit was created via the Drush generate-profile command. 

Bear is a Drupal 7 Starter Kit, not a full Drupal 7 distribution. It was originally created as a bootstrapped starting point for Zivtech Drupal development projects, with helpful pre-configured modules and mission critical patches. There should be no need for you to ever update the Bear project itself once it has been installed. Individual contributed modules, libraries, and the Bear Skin theme can be updated as you normally would any other contributed projects after install is complete. You should also feel free to update or disable any included features as needed. Out of the box Bear is ready to create new features as needed to suit your project.

To use it:

    drush make build-bear.make /web/path/bear
    cd /web/path/bear
    drush site-install bear --yes --sites-subdir=default --db-url=PUT_YOUR_DB_SPEC_HERE --db-su=DBUSER --db-su-pw=DBPASSWORD --account-name=admin --account-pass=secretsecret

To view your site in a web browser:

    cd sites/default
    drush runserver /

Installation Notes: 

It is recommended that if building bear using Drush from Drupal.org directly that the the libraries, modules, and themes directories be moved to /sites/all/ path location. The Drupal.org packaging script puts these directories in /profiles/bear/, which can cause issues if trying to update contributed modules later on. It is best to move these prior to installation, or you may need to rebid your Drupal registry if moved after the initial installation process has completed. If you build Bear using the make file method above, you will not have this issue.

Core and Contrib Update Notes: 

Drush Make creates PATCHES.txt files during the make process which contain the patch file URLs that were applied to Bear projects, including Drupal core. These files can be quite tedious to manage, so we have created a /patches folder inside the Bear root directory that contains all patches applied to Bear in the original make files. It is recommended that you keep this directory in version control and to update these patches as needed during your update processes. The goal of this folder is to allow site maintainers to keep patches in version control with the rest of the project. This will make it much easier to maintain patches on contrib and core updates as they are applied.