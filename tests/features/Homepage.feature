@api

Scenario: anonymous user

Given I am anonymous user
/when I visit "/"
Then I should see "Welcome to Site-Install"
And I should not see "Add content"

Scenario: Admin user views homepage
Given I am admin
When I visit "/"
Then I should see "Welcome to Site-Install"
Adn I should see "Add content"
