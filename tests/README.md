## Requirements

The requirements are similar to that of the Behat Drupal extention. See [their
requirements page](https://behat-drupal-extension.readthedocs.org/en/3.1/requirements.html)
for more details and how to download Selenium.

* PHP 5.3.4 or higher
* Java
* cURL
* Selenium
* A running Bear website already installed.

## Getting started

To run the Behat tests you must be on the host machine for the site. If it is
hosted on a VM or Docker instance then the tests must be ran on the VM or Docker instance.

1. Run selenium ```java -jar selenium-server-standalone-2.44.0.jar &```
2. Navigate to the *tests* directory for the Bear profile.
3. Install necessary extensions by running ```composer install```
4. Run the tests with the Bear defaults by running ```bin/behat``` or with your
own configuration by running ```bin/behat --config local.behat.yml```.

By default behat is configured to make a few assumptions about the configuration:

* docroot - default: ```http://bear_updates.local```
* url - default: ```/var/www/bear_updates/webroot```
* drush alias - default: ```local```

If you wish to change these defaults make a copy of the ```behat.yml``` file named
```local.behat.yml``` and make the desired changes. Be sure to use the following
command to run with your local configuration ```bin/behat --config local.behat.yml```.
