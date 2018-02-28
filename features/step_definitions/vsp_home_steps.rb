Given(/^I am on the vsp homepage$/) do
	@current_page = page(VspHomePage).await(timeout: 30)
	@current_page.assert_home
end

Then(/^I should see vsp home features$/) do
	@current_page.assert_home
end

When(/^I access vsp Account option$/) do
	@current_page.tap_menu_account_option
end

When(/^I access vsp Explore option$/) do
	@current_page.tap_menu_explore_option
end

Then(/^a message should be displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end