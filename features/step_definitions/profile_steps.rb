When(/^I perform Logout$/) do
	@current_page = page(ProfilePage).await(timeout: 30)
	@current_page.tap_logout_button
	@current_page.tap_alert_logout_yes_button
end