@api
Feature: Multiple Field Widget
  As a Site Admin
  I am able to specify if a multiple field should use drag and drop
  And create the best site experience

Scenario: As an Administrator I can add a multiple text field to page content type and it is orderable.
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/manage/page/fields"
    And I fill in "fields[_add_new_field][label]" with "Test field"
    And I select "Text" from "- Select a field type -"
    And I press "Save"
    And I press "Save field settings"
    And I select "Unlimited" from "Number of values"
    And I press "Save settings"
    And I visit "node/add/page"
   Then I should see "Test field"
    And I should see "Weight"
