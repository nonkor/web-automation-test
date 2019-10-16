Feature: User account creation
  As a user
  I should be able to register an account
  So that I can make order
  with prefilled data about delivery address and payment details

  Scenario: User creates an account using an email address
    Given an unregistered user on the home page
    When the user registers an account using an email address
    Then the user should be on the dashboard page
    Then the account should be created

  Scenario: User logs into their account using an email address
    Given a registered user
    When the user signs into their account using an email address
    Then the user should be on the dashboard page

  Scenario: User logs out from their account
    Given a registered user
    And the user is logged in
    When the user logs out from their account
    Then the user should be logged out
    And the user should be on the dashboard page
