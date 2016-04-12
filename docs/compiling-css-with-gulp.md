# Compiling CSS with Gulp
Bear Skin ships with a Gulp setup to preprocess our sass/css code. See https://www.zivtech.com/blog/goodbye-ruby-hello-nodejs-speeding-sass for more information.

## Getting Started
To start building CSS, you first have to install all the gulp dependencies.

1. Install [node.js](https://nodejs.org/en/).
2. After changing to the project directory in your terminal, run `npm install`. If you run into errors:
  - Make sure your local paths are right: `npm config set prefix /usr/local`
  - Reinstall gulp: `sudo npm install gulp -g`
3. After the process finishes, you'll be able to run all the gulp tasks listed below.

Make sure to enable the `bear_skin` sub theme to have access to panel templates, or duplicate the `panel-layouts` folder in the `bear_coat` root folder.

## Gulp Tasks
1. `gulp watch` - Watches sass, images, js, and php files. Activate the LiveReload browser plugin to trigger a refresh when files change.
2. `gulp sass` - Compiles Sass into CSS. These are the theme's styles. You shouldn't need to add vendor prefixes for CSS because Autoprefixer will do that for you.
3. `gulp panels` - Compiles Sass in the `panels-layouts` directory. This is CSS for the panel layouts only, but it does use the variables from the theme styles in order to keep paddings, margins, and breakpoints consistent with the theme.
4. `gulp scripts` - Checks your JS for errors.
5. `gulp images` - Optimizes images.
6. `gulp build` - Combines tasks 2 through 5 into a single build process.
