@api
Feature: New Content Type Settings
  When I create a new content type
  The preview before submitting should be disabled
  And the display author and date should be disabled
  And the revisions should be enabled
  And comments should be hidden
  To make the process of creating new content types more efficient
  And to ensure new content types have the best default settings

Scenario: As an administrator, I can create a new content type and have the option to create revisions be enabled by default
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/add"
   Then the checkbox "edit-options-revision" is checked

Scenario: As an administrator, I can create a new content type and have the Comments section be hidden by default
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/add"
   Then I should not see "Comment settings"

Scenario: As an administrator, I can create a new content type and have the option to display author and time information be disabled by default
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/add"
   Then the checkbox "edit-display-submitted" is unchecked

Scenario: As an administrator, I can create a new content type and have the option to preview before submitting be disabled by default
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/add"
   Then the "edit-preview-mode-0" radio should be checked
