@api
Feature: Editor Revision Permission Settings
  As a user with the Editor role
  I am able to view revision settings when adding new content if I have permission to view, revert or delete revisions
  And if I don't have those permissions
  I am unable to view the revision settings when adding new content
  So I only see the settings that are available to me


Scenario: Verifying that the Editor role will see revision settings in new content form with the correct permissions
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/people/permissions"
    And I check the box "edit-editor-view-all-revisions"
    And I press "Save permissions"
    And I am logged in as a user with the "editor" role
   When I visit "/node/add/page"
   Then I should see "Revision log message"

Scenario: Verifying that the Editor role will not see revision settings in new content form without the correct permissions
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/people/permissions"
    And I uncheck the box "edit-editor-view-all-revisions"
    And I press "Save permissions"
    And I am logged in as a user with the "editor" role
   When I visit "/node/add/page"
   Then I should not see "Revision log message"
