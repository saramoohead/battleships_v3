Feature: playing battleships
  In order to play battleships
  As a player
  I want to start a new game

  Scenario: register name
    Given I am on the homepage
    When I fill in "name" with "Milena"
    Then I see "Welcome, Milena!"
