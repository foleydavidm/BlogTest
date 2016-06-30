Feature: New User Setup

  Scenario: Register new Blogger
    Given I goto the registration page
    When I enter a user name and password
    And click submit
    Then I am prompted with a notification of account creation