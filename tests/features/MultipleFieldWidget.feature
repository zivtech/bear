@api
Feature: Multiple Field Widget
  As a Site Admin
  I am able to specify if a multiple field should use drag and drop
  And create the best site experience

Scenario: As an Administrator I can add a multiple text field to page content type and it is orderable.
  Given I am logged in as a user with the "administrator" role
  When I visit "admin/structure/types/manage/page/fields"
    And I fill in "edit-fields-add-new-field-label" with "Test field"
    And I fill in "edit-fields-add-new-field-field-name" with "test"
    And I select "Text" from "edit-fields-add-new-field-type"
    And I select "Text field" from "edit-fields-add-new-field-widget-type"
    And I press "Save"
    And I press "edit-submit"
    And I select "Unlimited" from "edit-field-cardinality"
    And I press "Save settings"
    And I visit "node/add/page"
   Then I should see "Test field"
    And I should see "Order" in the "#edit-field-test" element

@AfterScenario @deleteTestField   
Scenario: As an Administrator I can make the multiple text field unorderable.
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/manage/page/fields/field_test/widget-type"
    And I uncheck "edit-orderable"
    And I press "Continue"
    And I press "Save"
    And I visit "node/add/page"
   Then I should see "Test field"
    And I should not see "Order" in the "#edit-field-test" element