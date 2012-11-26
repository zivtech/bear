; Make file for Bear Websites.
; Project Bear provides developers with a set of essential modules and developer tools.
; It is intended as the starting point for almost any website.

; API version
; ------------
api = 2

; Core version
; ------------
core = 7.x

;Include the definition for how to build Drupal core directly, including patches:
; ------------
includes[] = drupal-org-core.make

; Download the install profile and recursively build all its dependencies:
projects[bear][type] = "profile"
project[bear][download][type] = "git"
project[bear][download][url] = "ryanissamson@git.drupal.org:sandbox/ryanissamson/1845934.git"
project[bear][download][branch] = "7.x"
