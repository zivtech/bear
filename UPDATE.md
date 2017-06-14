This file contains instructions for updating your Bear-based Drupal site.

## Updating Bear

### Composer
If you've installed Bear using our [Composer-based project template](https://github.com/zivtech/bear-project), all you need to do is:

* ```cd /path/to/YOUR_PROJECT```
* ```composer update```
* Run ```drush updatedb``` or visit ```update.php``` to perform automatic database updates.
* Perform any necessary manual updates (see below).

### Tarball
**Do not use ```drush pm-update``` or ```drush up``` to update Bear!**
Bear includes specific, vetted, pre-tested versions of modules, and
occasionally patches for those modules (and Drupal core). Drush's updater
totally disregards all of that and may therefore break your site.

To update Bear safely:

1. Download the latest version of Bear from
   https://www.drupal.org/project/bear and extract it.
2. Replace your ```profiles/bear``` directory with the one included in the
   fresh copy of Bear.
3. Replace your ```core``` directory with the one included in the fresh copy
   Bear.
4. Visit ```update.php``` or run ```drush updatedb``` to perform any necessary
   database updates.
