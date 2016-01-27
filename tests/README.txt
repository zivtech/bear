To Run Behat Tests in your VM:
------------------------------
Follow these steps first to set up behat on your VM.

1. To set up test framework, in this directory run: composer install

2. If you are runnning this on a virtual machine, add your local site to your vm's hosts file so the tests will be able to interact with the site. Verify that your machine can resolve the domain by pinging it.

3. Edit behat.yml to set the base_url and webroot properly.

4. If you do not have Selenium setup, you can only run tests with Goutte, which means tests will not use Javascript. To run only tests that don't require Javascript, use: bin/behat --tags "~@javascript"

The tests must be run from the machine hosting the site.


To Run Javascript Tests:
------------------------
To run tests with Selenium (tests with '@javascript' tag).

1. Go to http://docs.seleniumhq.org/download/ and download the latest Selenium Standalone Server (currently ver. 2.48.2)

2. To install the X virtual framebuffer, run: sudo apt-get install xvfb

3. To install latest version of Firefox, run: sudo apt-get install firefox

4. Run the Selenium .jar file:  xvfb-run java -jar selenium-server-standalone-2.48.2.jar

You will need to keep this window open when running javascript tests, so run the behat tests in a new tab. Make sure to stop running the file and close the tab when you are done.
