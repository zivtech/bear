@api
Feature: Content Creation Defaults
  When I create a piece of content
  The preview option should be disabled
  And the revision option should be enabled
  And display author information should be disabled
  And comments should be hidden

Scenario: The Bear Necessities default settings for content creation are enforced
Given I am logged in as a user with the "administrator" role
 When I visit "admin/structure/types/manage/page"
  Then the "edit-node-preview-0" radio button should be checked
  And the "edit-node-options-status" checkbox should be checked
  And the "edit-node-options-revision" checkbox should be checked
  And the "edit-node-submitted" checkbox should not be checked
  And the "edit-diff-enable-revisions-page-node" checkbox should be checked
