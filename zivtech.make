; This drupal-org.make file downloads contrib modules, themes, and 3rd party libraries.

api = 2
core = 7.x

; Patches should now all be handled by patches.make file thanks to https://bitbucket.org/davereid/drush-patchfile.

; Modules
projects[] = semantic_ui_api

; Libraries
libraries[semantic_ui][type] = "libraries"
libraries[semantic_ui][download][type] = "get"
libraries[semantic_ui][download][url] = "https://github.com/Semantic-Org/Semantic-UI/archive/master.zip"
libraries[semantic_ui][directory_name] = "semantic_ui"
libraries[semantic_ui][destination] = "libraries"
