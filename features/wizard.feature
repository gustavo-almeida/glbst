Feature: Wizard
  As a user I want execute Globosat Play app for the first time.
  I should be able to navigate through
  wizard screens with gestures or by tap a 'next' button.

  @nightly @wizard
  Scenario: Swipe to second wizard screen
    Given I am on the first wizard screen
    When I swipe screen to left
    Then I see to second wizard screen

  @nightly @wizard
  Scenario: Swipe to third wizard screen
    Given I am on the first wizard screen
    When I swipe to the third wizard screen
    Then I see to third wizard screen

  @nightly @wizard
  Scenario: Swipe to fourth wizard screen
    Given I am on the first wizard screen
    When I swipe to the fourth wizard screen
    Then I see to fourth wizard screen

  @nightly @wizard
  Scenario: Advance to second wizard screen
    Given I am on the first wizard screen
    When I tap Next
    Then I see to second wizard screen

  @nightly @wizard
  Scenario: Advance to third wizard screen
    Given I am on the first wizard screen
    When I tap Next until the third wizard screen
    Then I see to third wizard screen

  @nightly @wizard
  Scenario: Advance to fourth wizard screen
    Given I am on the first wizard screen
    When I tap Next until the fourth wizard screen
    Then I see to fourth wizard screen

  @nightly @wizard @homepage
  Scenario: Go to homepage with speed change feature notification
    Given I am on the first wizard screen
    When I advance to homepage
    Then I see a speed change feature notification
