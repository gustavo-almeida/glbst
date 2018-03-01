Feature: Profile
  As a user I want manage my profile account through app
  I should be able Login/Logout, change and edit my profile

Background:
	Given I am on the first tutorial screen
	When I advance to homepage

@nightly @profile @reinstall @gsatplay
Scenario: Validate profile page
	Given I am on the clean homepage
	When I access app main menu
	And access profile option
	Then I am redirect to profile page

@nightly @smoke-test @profile @reinstall @gsatplay
Scenario: Logout from app
	Given I am on the clean homepage
	When I go to profile page
	And I perform Logout
	Then I should be logged out

@nightly @smoke-test @profile @reinstall @gsatplay
Scenario: Login from app
	Given I am on the clean homepage
	When I go to profile page
	And I perform Login with user "automacao"
	Then I should be logged in