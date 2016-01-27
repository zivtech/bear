@api
Feature: Default Publishing Options for Content and Content Types
  When I created a new content type or new content
  Then I should not see "Promoted to front page" or "Sticky at top of lists" under Publishing Options
  To make the process of creating new content types and content more efficient
  And to ensure new content types and content have the best default settings


Scenario: Verifying that the unwanted publishing options are not visible when creating new content types
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/structure/types/add"
   Then I should not see "Promoted to front page" in the "#edit-workflow" element
    And I should not see "Sticky at top of lists" in the "#edit-workflow" element

Scenario: Verifying that the unwanted publishing options are not visible when creating new content types
  Given I am logged in as a user with the "administrator" role
   When I visit "/node/add/page"
   Then I should not see "Promoted to front page" in the "#edit-options" element
    And I should not see "Sticky at top of lists" in the "#edit-options" element
