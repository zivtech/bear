To set up test framework, run composer install in this directory.

After the installer runs, add your site to your machine's hosts file so the tests will be able to interact with the site.

Edit behat.yml to set the base_url and webroot properly.

If you do not have Selenium setup, you can only run tests with Goutte, which means tests will not use Javascript.
To run only tests that don't require Javascript, use:
    bin/behat --tags "~@javascript"

The tests must be run from the machine hosting the site.

To run tests with Selenium (tests with '@javascript' tag):
  wget http://selenium.googlecode.com/files/selenium-server-standalone-2.44.0.jar
    [May need to visit the website to determine the latest Selenium version]
  sudo apt-get install xvfb
  We need an older version of firefox, but we also need dependencies, so first: sudo apt-get install firefox
  Then remove it (the dependencies will stay though): sudo apt-get remove firefox
  Now get the older version:
  wget https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/31.0/linux-i686/en-US/firefox-31.0.tar.bz2
  tar xvf firefox-31.0.tar.bz2
  Move the extracted firefox directory: mv firefox/ /opt/
  sudo ln -s /opt/firefox/firefox /usr/bin/firefox
  xvfb-run firefox to test that firefox works. You may get an error: Xlib:  extension "RANDR" missing on display ":99". That's safe to ignore.
  xvfb-run java -jar selenium-server-standalone-2.45.0.jar
  Run behat tests in another terminal window
