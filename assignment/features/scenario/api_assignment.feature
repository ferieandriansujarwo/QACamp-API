Feature: Get Data from another API

Scenario: Fetching user data
    Given I want to get user from this link "https://jsonplaceholder.typicode.com/users"
      And I want to fetch user data with id "3"
      And Show me the response
    Then I should get user with id "3"
    And I should get user with name "Clementine Bauch"
    And I should get user with username "Samantha"
    And I should get user with email "Nathan@yesenia.net"
    And I should get user with address street "Douglas Extension"
    Then Response status should be "200"