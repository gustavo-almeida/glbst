Feature: Start Tutorial
  As a user I want execute VSP app for the first time.
  I should be able to navigate through
  tutorial screens accepting or rejecting some options.

@nightly @tutorial
Scenario: Swipe to second tutorial vsp screen
  Given I am on the first tutorial vsp screen
  When I swipe screen to left
  Then I should stay on first tutorial vsp screen

@nightly @tutorial
Scenario: Swipe from tutorial vsp screen to home
  Given I am on the second tutorial vsp screen
  When I swipe screen to left
  Then I should stay on second tutorial vsp screen

@nightly @tutorial @notifications
Scenario: Accept notifications on tutorial screen
  Given I am on the first tutorial vsp screen
  When I accept receive notifications
  Then I am now able to receive notifications from app

@nightly @tutorial @notifications
Scenario: Reject notifications on tutorial screen
  Given I am on the first tutorial vsp screen
  When I reject receive notifications
  Then I am now unable to receive notifications from app

@nightly @tutorial @geolocalization
Scenario: Accept geolocalization on tutorial screen
  Given I am on the first tutorial vsp screen
  When I advance to next tutorial screen
  And I accept share my geolocalization
  Then I am now able to watch local content easily

@nightly @tutorial @geolocalization
Scenario: Reject geolocalization on tutorial screen
  Given I am on the first tutorial vsp screen
  When I advance to next tutorial screen
  And I reject share my geolocalization
  Then I am now unable to watch local content easily

@nightly @tutorial @notifications
Scenario: Go to home rejecting tutorial
  Given I am on the first tutorial vsp screen
  When I reject both options
  Then I am redirect to homepage
  And with both options disabled 