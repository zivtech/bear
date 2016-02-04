@api
Feature: Editor Page Access Checks
  As a user with the Editor role
  I should be able to view and create content
  And I should be be able to add new users


Scenario: As an Editor I should be able to view content
  Given I am logged in as a user with the "editor" role
   When I visit "/admin/content"
   Then I should get a 200 HTTP response

Scenario: As an Editor I should be able to create content
  Given I am logged in as a user with the "editor" role
   When I visit "/node/add/page"
   Then I should get a 200 HTTP response

Scenario: As an Editor I should be able to add new users
  Given I am logged in as a user with the "editor" role
   When I visit "/admin/people/create"
   Then I should get a 200 HTTP response
