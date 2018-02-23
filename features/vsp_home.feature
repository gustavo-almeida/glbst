Feature: Home
  As a user I want open the app on homepage
  I should be able to navigate through features and channels

@nightly @vsp @smoke-test
Scenario: Validate vsp homepage
	Given I am on the vsp homepage
	Then I should see vsp home features

@nightly @vsp
Scenario: Go to Explore Page
	Given I am on the vsp homepage
	When I access vsp Explore option
	Then I be redirect to vsp explore page

@nightly @vsp
Scenario: Go to Profile Page
	Given I am on the vsp homepage
	When I access vsp Profile option
	Then I be redirect to vsp profile page

# @nightly @vsp @todo
# Scenario: Execute app without internet
# 	Given I am on the vsp homepage
# 	And without internet access
# 	Then a message should be displayed

# @nightly @vsp @todo
# Scenario: Select channel
# 	Given I am on the vsp homepage
# 	When I roll to "" on channel selector
# 	Then I should see the homepage changes for this channel