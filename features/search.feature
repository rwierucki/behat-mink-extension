Feature: Search
  In order to see a word definition
  As a website user
  I need to be able to search for a word

  Scenario: Searching for a page that does exist
    Given I am on "/wiki/Main_Page"
    When I fill in "search" with "Behavior Driven Development"
    And I press "searchButton"
    Then I should see "agile software development"

  Scenario: Searching for a page that does NOT exist
    Given I am on "/wiki/Main_Page"
    When I fill in "search" with "Glory Driven Development"
    And I press "searchButton"
    Then I should see "Search results"

 Scenario: Searching for a page that does exist
    Given I am on "/wiki/Main_Page"
    When I fill in "searchInput" with "Glory Glory Man United"
    And I press "Go"
    Then I should see "Glory Glory (football chant)"
