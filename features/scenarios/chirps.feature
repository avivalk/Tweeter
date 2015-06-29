@tweeter
Feature: Tweeter Application tests

  Scenario: Verify New Chirp Page
  Given I am on the chirps homepage
  And I click New Chirp
  Then I expect to be on the new chirp page

  Scenario: Verify create new chirp
  Given I am on the chirps homepage
  And I click New Chirp
  And I fill in the body and user
  Then I expect to be on the display chirp page
