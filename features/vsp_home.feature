Feature: Home
  As a user I want open the app on homepage
  I should be able to navigate through features and channels

Background:
  	Given I am on the first tutorial vsp screen
	When I advance to vsp homepage

@nightly @smoke-test @vsp
Scenario: Validate vsp homepage
	Given I am on the vsp homepage
	Then I should see vsp home features

@nightly @vsp
Scenario: Go to Explore Page
	Given I am on the vsp homepage
	When I access vsp Explore option
	Then I be redirect to vsp explore page

@nightly @vsp
Scenario: Go to Account Page
	Given I am on the vsp homepage
	When I access vsp Account option
	Then I be redirect to vsp account page

@nightly @vsp
Scenario: Execute app without internet
 	Given I am on the vsp homepage
 	And without internet access
 	Then a message should be displayed

@nightly @vsp
Scenario Outline: Select channel
 	Given I am on the vsp homepage
 	When I roll to <channel> on channel selector
 	Then I should see the homepage changes for <channel>
    Examples:
      | channel   |
      | sportv    |
      | globonews |
      | gnt       |
      | multishow |
      | viva      |
      | mais      |
      | gloob     |
      | gloobinho |
      | off       |
      | bis       |
      | megapix   |
      | brasil    |
      | universal |
      | syfy      |
      | studio    |

@nightly @vsp
Scenario Outline: Validate channel content
 	Given I am on the vsp homepage
 	When I play <channel> on channel selector
 	Then I should be redirect for <channel> content
    Examples:
      | channel   |
      | sportv    |
      | globonews |
      | gnt       |
      | multishow |
      | viva      |
      | mais      |
      | gloob     |
      | gloobinho |
      | off       |
      | bis       |
      | megapix   |
      | brasil    |
      | universal |
      | syfy      |
      | studio    |