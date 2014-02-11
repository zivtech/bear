The Bear installation profile was created via the Drush generate-profile command. 

Bear is a Starter Kit, not a full Drupal distribution. It was created as a base installation profile for Zivtech Drupal development projects, with helpful pre-configured modules and mission critical patches. There should be no need for you to ever update the Bear project itself once it has been installed. Individual contributed modules, libraries, and the Bear Skin theme can be updated as you normally would any other contributed projects after install is complete. You should also feel free to update or disable any included features as needed. Out of the box Bear is ready to create new features as needed to suit your project.

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

Drush Make creates PATCHES.txt files which contain the patch file URLs that were applied to Bear projects, including Drupal core, during installation. These files can be quite tedious to manage, so we recommend creating a /patches folder inside your Drupal root directory and downloading all patches applied during installation to that directory. This will allow you to keep your patches in version control with the rest of your project, and it is easier to maintain patches on contrib and core updates as they come through. Then check which patches need to be re-applied after updating Drupal core, contributed modules, or libraries.