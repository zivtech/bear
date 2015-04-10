@api
Feature: Creating Basic Content
  As a Site Admin
  I am able to log in
  And publish content on the site

Scenario: Administrator is able to log in and create Basic Page content
  Given I am logged in as a user with the "administrator" role
  When I visit "node/add/page"
   And I fill in "Title" with "[random]"
   And I fill in "Body" with "This is test content."
   And I press "Save"
   And I visit "admin/content"
   And I should see "[random:1]"
   And I click "[random:1]"
  Then I should see "test content."

Scenario: As an Administrator I should be able to add a Menu Item
  Given I am logged in as a user with the "administrator" role
  When I visit "node/add/page"  
   And I fill in "Title" with "[random]"
   And I fill in "Body" with "This is test content."
   And I check the box "Provide a menu link"
   And I fill in "Menu link title" with "About Us"
   And I select "<Main menu>" from "Parent item"
   And I press "Save"
   And I visit "/"
   And I should see "About Us"
   And I follow "About Us"
  Then I should see "test content."

