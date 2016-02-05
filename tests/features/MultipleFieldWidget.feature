@api
Feature: Multiple Field Widget
  As a Site Admin
  I am able to specify if a multiple field should use drag and drop
  And create the best site experience

@deleteTestField
Scenario: As an Administrator I can add a multiple text field to page content type and it is orderable.
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/structure/types/manage/page/fields/add-field"
    And I select "text" from "edit-new-storage-type"
    And I fill in "edit-label" with "Test field"
    And I fill in "edit-field-name" with "test"
    And I press "Save and continue"
    And I select "Unlimited" from "edit-cardinality"
    And I press "Save field settings"
    And I visit "node/add/page"
   Then I should see "Test field"
    And I should see "Order" in the "#field-test-values" element

@deleteTestField
Scenario: As an administrator I can see an Orderable checkbox on multiple field
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/structure/types/manage/page/fields/add-field"
    And I select "text" from "edit-new-storage-type"
    And I fill in "edit-label" with "Test field"
    And I fill in "edit-field-name" with "test"
    And I press "Save and continue"
    And I select "Unlimited" from "edit-cardinality"
    And I press "Save field settings"
    And I visit "/admin/structure/types/manage/page/fields/node.page.field_test"
   Then I should see "Orderable"

@deleteTestField
Scenario: As an Administrator I can add a multiple text field to page content type and it is not orderable.
  Given I am logged in as a user with the "administrator" role
   When I visit "/admin/structure/types/manage/page/fields/add-field"
    And I select "text" from "edit-new-storage-type"
    And I fill in "edit-label" with "Test field"
    And I fill in "edit-field-name" with "test"
    And I press "Save and continue"
    And I select "Unlimited" from "edit-cardinality"
    And I press "Save field settings"
    And I visit "/admin/structure/types/manage/page/fields/node.page.field_test"
    And I uncheck "Orderable"
    And I press "Save settings"
    And I visit "node/add/page"
   Then I should not see "Order" in the "#edit-field-test-wrapper" element
