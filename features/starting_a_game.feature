Feature: playing battleships
  In order to play battleships
  As a player
  I want to start a new game

  Scenario: register name
    Given I am on the homepage
    When I fill in "name" with "Milena"
    And I click "Register" button
    Then I see "Welcome, Milena!"

  Scenario: register without a name
    Given I am on the homepage
    When I do not fill in my "name"
    And I click "Register" button
    Then I see "Welcome, Player 1!"

  Scenario:
    Given I am on the new game page
    Then I can see a board
