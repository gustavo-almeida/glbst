Given(/^I am on the login webpage$/) do
	@current_page = page(LoginWebPage).await(timeout: 30)
	@current_page.assert_operator_page
end

When(/^I proceed with Login steps with "([^\"]*)"$/) do |user|
	@current_page.tap_globosat_operator_option
	@current_page.fill_login_form
	@current_page.select_user_avatar(user)
end