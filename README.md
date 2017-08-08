# Bear

Bear is a Drupal 8 Starter Kit, not a full Drupal 8 distribution. It was originally created as a bootstrapped starting point for Zivtech Drupal development projects, with helpful pre-configured modules and mission critical patches. There should be no need for you to ever update the Bear project itself once it has been installed. Individual contributed modules, libraries, and the Bear Skin theme can be updated as you normally would any other contributed projects after install is complete. You should also feel free to update or disable any included features as needed. Out of the box Bear is ready to create new features as needed to suit your project.

Bear is what we wish Drupal core was out of the box. It contains enhancements and fixes to core. Everything that we use on 80-90% of the sites we build we want to have in Bear so that we have it out of the box when we start a new project.

Bear is not precious! When you start a new site on Bear you are encouraged to hack Bear, to treat it like your own custom code rather than something you will do updates of from upstream. Update core and contrib, but don’t update Bear.

## Installing Bear
The preferred way to install Bear is using our
[Composer-based project template][template]. It's easy!

```
$ composer create-project zivtech/bear-project:8.2.x-dev MYPROJECT
```

If you don't want to use Composer, you can install Bear the traditional way
by downloading a tarball from our
[drupal.org project page](https://www.drupal.org/project/bear). (Please
note that the tarball does not contain any experimental features.)

You can customize your installation by creating a [sub-profile which uses
Bear as its base profile][sub-profile documentation]. Bear includes a
Drupal Console command (`bear:subprofile`) which will generate a
sub-profile for you.
