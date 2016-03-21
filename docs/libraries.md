#Bear Included 3rd Party Libraries

Bear 8 does not require any 3rd Party Libraries out of the box. This is thanks to CKEditor being included in core. We do have some optional 3rd Party Libraries that can be installed to extend Bear's functionality, mainly for Bear Coat.

- [Semantic UI](https://github.com/Semantic-Org/Semantic-UI/releases)
- [SIDR](https://github.com/artberri/sidr-package/releases)

## Installing Sidr
The SIDR menu will turn your main navigation into a responsive navigation under 800px.

In order to enable, download the plugin at https://github.com/artberri/sidr and place the uncompressed directory in the bear_coat root directory and rename it to "sidr". The path should be `bear_coat/sidr/`. You can also cd into bear_coat and run `git clone https://github.com/artberri/sidr.git sidr`.

After you have installed the library and modules, go the the Bear Coat settings page (/admin/appearance/settings/bear_coat), check the box next to "Include the SIDR responsive menu" and save configuration.
