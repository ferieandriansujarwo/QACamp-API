Feature: Get Data from API

@todos
Scenario: Fetching todos
    Given I want to get todos with in "https://jsonplaceholder.typicode.com/todos"
      And I want to fetch todos data with id "1"
      And Show me the response
    Then I should get todos with id "1"
    And I should get todos with title "delectus aut autem"
    Then Response status should be "200"

@users
Scenario: Fetching users
    Given I want to get users with in "https://jsonplaceholder.typicode.com/users"
      And I want to fetch users data with id "4"
      And Show me the response
    Then I should get users with id "4"
    And I should get users with name "Patricia Lebsack"
    And I should get users with username "Karianne"
    And I should get users with email "Julianne.OConner@kory.org"
    And I should get users with address "$.address.street" street "Hoeger Mall"
    Then Response status should be "200" 