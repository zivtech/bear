@api
Feature: Multiple Field Widget
  As a Site Admin
  I am able to specify if a multiple field should use drag and drop
  And create the best site experience

@deleteTestField
Scenario: As an Administrator I can add a multiple text field to page content type and it is orderable.
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/manage/page/fields"
    And I fill in "fields[_add_new_field][label]" with "Test field"
    And I fill in "edit-fields-add-new-field-field-name" with "test"
    And I select "Text" from "edit-fields-add-new-field-type"
    And I select "text_textfield" from "edit-fields-add-new-field-widget-type"
    And I press "Save"
    And I press "edit-submit"
    And I select "Unlimited" from "edit-field-cardinality"
    And I press "Save settings"
    And I visit "node/add/page"
   Then I should see "Test field"
    And I should see "Order" in the "#edit-field-test" element

@deleteTestField
Scenario: As an Administrator I can add a multiple text field to page content type and it is not orderable.
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/manage/page/fields"
    And I fill in "fields[_add_new_field][label]" with "Test field"
    And I fill in "edit-fields-add-new-field-field-name" with "test"
    And I select "Text" from "edit-fields-add-new-field-type"
    And I select "text_textfield" from "edit-fields-add-new-field-widget-type"
    And I press "Save"
    And I press "edit-submit"
    And I select "Unlimited" from "edit-field-cardinality"
    And I press "Save settings"
    And I visit "admin/structure/types/manage/page/fields/field_test/widget-type"
    And I uncheck "Orderable"
    And I press "edit-submit"
    And I visit "node/add/page"
   Then I should not see "Order" in the "#edit-field-test" element

@deleteTestField
Scenario: As an administrator I can see an Orderable checkbox on multiple field
  Given I am logged in as a user with the "administrator" role
   When I visit "admin/structure/types/manage/page/fields"
    And I fill in "fields[_add_new_field][label]" with "Test field"
    And I fill in "edit-fields-add-new-field-field-name" with "test"
    And I select "Text" from "edit-fields-add-new-field-type"
    And I select "text_textfield" from "edit-fields-add-new-field-widget-type"
    And I press "Save"
    And I press "edit-submit"
    And I select "Unlimited" from "edit-field-cardinality"
    And I press "Save settings" 
    And I visit "admin/structure/types/manage/page/fields/field_test/widget-type"
   Then I should see "Orderable"
