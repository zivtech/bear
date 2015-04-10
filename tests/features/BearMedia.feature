@api
Feature: Media module should function properly
	As an authenticated user
	I should be able to add media to content 


##Scenario: User must be able to add media field to Basic Page
##  Given I am logged in as a user with the "administrator" role
##   When I visit "admin/structure/types/manage/page/fields"
##    And I fill in "Add new field" with "Image"
##    And I select "Image" from "edit-fields-add-new-field-type"
##    And I select "Media browser" from "edit-fields-add-new-field-widget-type"
##    And I press "Save"
##    And I press "Save field settings"
##    And I should see "Updated field"
##    And I check the box "Upload"
##    And I check the box "Library"
##    And I check the box "YouTube"
##    And I press "Save settings"
##   Then I should see "configuration."

@javascript
Scenario: I should be able to add images to media field from the library
  Given I am logged in as a user with the "administrator" role
   When I visit "node/add/page"  
    And I fill in "Title" with "[random]"
    And I type "This is test content." in the "edit-body-und-0-value" WYSIWYG editor
    And I click "edit-field-media-test-und-0-browse-button"
    And I enter the iframe
    And I pause
    And I follow "Library"
    And I choose an image
    And I click the fake "Submit" button
    And I leave the iframe
    And I press "Save"
    And I break
    And I should see "test content."
   Then I should see the "test.jpg" image

@javascript
Scenario: I should be able to upload YouTube video
#TODO: How did the youtube with a link thing work?
  Given I am logged in as a user with the "administrator" role
   When I visit "node/add/page"  
    And I fill in "Title" with "[random]"
    And I type "This is test content." in the "edit-body-und-0-value" WYSIWYG editor
    And I click "edit-field-media-test-und-0-browse-button"
    And I enter the iframe
    And I follow "YouTube"
    And I fill in "Search" with "https://www.youtube.com/watch?v=rfh4Mhp-a6U"
    And I press "Apply"
    And I pause
    And I pause
    And I choose a video
    And I press "Submit"
    And I leave the iframe
    And I break
    And I press "Save"
    And I should see "test content."
   Then I should see the "rfh4Mhp-a6U" video

@javascript
Scenario: The Media Button in WYSIWYG Toolbar should function properly.
  Given I am logged in as a user with the "administrator" role
   When I visit "node/add/page"  
    And I fill in "Title" with "[random]"
    And I click the "Add media" button in the "edit-body-und-0-value" WYSIWYG editor   
    And I enter the iframe
    And I pause
    And I follow "Library"
    And I choose an image
    And I should see "Submit"
    And I pause
    And I click "Submit"
    And I pause
    And I click "Submit"
    And I leave the iframe
    And I type "This is test content." in the "edit-body-und-0-value" WYSIWYG editor     
    And I press "Save"
    And I break    
   Then I should see the "test-cat.jpg" image    
   ##Find image in DOM --> Custom step