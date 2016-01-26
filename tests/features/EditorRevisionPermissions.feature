@api
Feature: Editor Revision Permission Settings
  As a user with the Editor role
  I am able to view revision settings when adding new content if I have permission to view, revert or delete revisions
  And if I don't have those permissions
  I am unable to view the revision settings when adding new content
  So I only see the settings that are available to me


Scenario: Verifying that the Editor role has the correct permissions
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/people/permissions"
    And I check the box "edit-4-view-revisions"
    And I check the box "edit-4-revert-revisions"
    And I check the box "edit-4-delete-revisions"
    Then I press "Save permissions"

Scenario: As an Editor, I should see the revision information section when adding new content because I have the correct permissions
  Given I am logged in as a user with the "editor" role
   When I visit "/node/add/page"
   Then I should see "Revision information"

Scenario: Verifying that the Editor role does not have the correct permissions
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/people/permissions"
    And I uncheck the box "edit-4-view-revisions"
    And I uncheck the box "edit-4-revert-revisions"
    And I uncheck the box "edit-4-delete-revisions"
   Then I press "Save permissions"

Scenario: As an Editor, I should not see the revision information section when adding new content because I do not have the correct permissions
  Given I am logged in as a user with the "editor" role
   When I visit "/node/add/page"
   Then I should not see "Revision information"
