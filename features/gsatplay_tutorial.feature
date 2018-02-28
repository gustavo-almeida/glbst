Feature: Tutorial
  As a user I want execute Globosat Play app for the first time.
  I should be able to navigate through
  tutorial screens with gestures or by tap a 'next' button.

  @nightly @tutorial @gsatplay
  Scenario: Swipe to second tutorial screen
    Given I am on the first tutorial screen
    When I swipe screen to left
    Then I see to second tutorial screen

  @nightly @tutorial @gsatplay
  Scenario: Swipe to third tutorial screen
    Given I am on the first tutorial screen
    When I swipe to the third tutorial screen
    Then I see to third tutorial screen

  @nightly @tutorial @gsatplay
  Scenario: Swipe to fourth tutorial screen
    Given I am on the first tutorial screen
    When I swipe to the fourth tutorial screen
    Then I see to fourth tutorial screen

  @nightly @tutorial @gsatplay
  Scenario: Advance to second tutorial screen
    Given I am on the first tutorial screen
    When I tap Next
    Then I see to second tutorial screen

  @nightly @tutorial @gsatplay
  Scenario: Advance to third tutorial screen
    Given I am on the first tutorial screen
    When I tap Next until the third tutorial screen
    Then I see to third tutorial screen

  @nightly @tutorial @gsatplay
  Scenario: Advance to fourth tutorial screen
    Given I am on the first tutorial screen
    When I tap Next until the fourth tutorial screen
    Then I see to fourth tutorial screen

  @nightly @tutorial @homepage @gsatplay
  Scenario: Go to homepage with speed change feature notification
    Given I am on the first tutorial screen
    When I advance to homepage
    Then I see a speed change feature notification
