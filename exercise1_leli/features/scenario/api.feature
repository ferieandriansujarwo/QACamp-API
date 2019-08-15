Feature: Get Data from API

Scenario: Fetching users
    Given I want to get users with in "https://jsonplaceholder.typicode.com/users"
      And I want to fetch users data with id "4"
      And Show me the response
    Then I should get users with id "4"
    And I should get users with name "Patricia Lebsack"
    And I should get users with username "Karianne"
    And I should get users with email "Julianne.OConner@kory.org"
    And I should get users with address street "Hoeger Mall"
    Then Response status should be "200"