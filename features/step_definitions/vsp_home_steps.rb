Given(/^I am on the vsp homepage$/) do
	@current_page = page(VspHomePage).await(timeout: 30)
	@current_page.assert_home
end

Then(/^I should see vsp home features$/) do
	@current_page.assert_home
end

When(/^I access vsp Profile option$/) do
	@current_page.tap_nb_profile_option
end

When(/^I access vsp Explore option$/) do
	@current_page.tap_nb_explore_option
end

Then(/^a message should be displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end