Feature: Profile
  As a user I want manage my profile account through app
  I should be able Login/Logout, change and edit my profile

Background:
	Given I am on the first wizard screen
	When I advance to homepage

@nightly @profile
Scenario: Validate profile page
	Given I am on the clean homepage
	When I access app main menu
	And access profile option
	Then I am redirect to profile page

@nightly @smoke-test @profile @reinstall @todo
Scenario: Logout from app
	Given I am on the clean homepage
	When I go to profile page
	And I perform Logout
	Then I should be logged out

@nightly @smoke-test @profile @reinstall @todo
Scenario: Login from app
	Given I am on the clean homepage
	When I go to profile page
	And I perform Login with user "Automacao"
	Then I should be logged in