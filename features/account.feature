Feature: Account
  As a user I want manage my account through app
  I should be able Login/Logout and edit
  some profile configurations

Background:
	Given I am on the first wizard screen
	When I advance to homepage

@nightly @homepage
Scenario: Validate profile page
	Given I am on the clean homepage
	When I access app main menu
	And access profile option
	Then I am redirect to profile page