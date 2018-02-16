Feature: Home
  As a user I want open the app on homepage
  I should be able to navigate through features and channels

@nightly @smoke-test
Scenario: Validate vsp homepage
	Given I am on the vsp homepage
	Then I should see vsp home features

@nightly
Scenario: Go to Explore Page
	Given I am on the vsp homepage
	When I access vsp Explore option
	Then I be redirect to vsp explore page

@nightly
Scenario: Go to Profile Page
	Given I am on the vsp homepage
	When I access vsp Profile option
	Then I be redirect to vsp profile page