Then(/^I see a speed change feature notification$/) do
	@current_page = page(GsatPlayHomePage).await(timeout: 30)
  	@current_page.assert_news_view_showed
end

When(/^I close notification feature$/) do
	@current_page.tap_close_option
end

Given(/^I am on the homepage$/) do
	@current_page = page(GsatPlayHomePage).await(timeout: 30)
	@current_page.assert_header_present
end

#clean homepage = When the notification layer is not displayed
Given(/^I am on the clean homepage$/) do
	@current_page = page(GsatPlayHomePage).await(timeout: 30)
	step "I close notification feature"
	@current_page.assert_header_present
end

When(/^I access app main menu$/) do
	@current_page.tap_sandwich_menu
end

When(/^access profile option$/) do
	@current_page.tap_profile_image_option
end

Then(/^I am redirect to profile page$/) do
	@current_page = page(GsatPlayProfilePage).await(timeout: 30)
	@current_page.assert_profile_page
end

When(/^I go to profile page$/) do
	step "I access app main menu"
	step "access profile option"
end

Then(/^I should be logged out$/) do
	@current_page = page(GsatPlayHomePage).await(timeout: 30)
	step "I access app main menu"
	@current_page.assert_user_logged_out
end

When(/^I perform Login with user "([^\"]*)"$/) do |user|
	step "I am on the login webpage"
	step "I proceed with Login steps with \"#{user}\""
end

Then(/^I should be logged in$/) do
	@current_page = page(GsatPlayHomePage).await(timeout: 30)
	step "I access app main menu"
	@current_page.assert_user_logged_in
end