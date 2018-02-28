Given(/^I am on vsp Account page$/) do
	@current_page = page(VspAccountPage).await(timeout: 30)
	@current_page.assert_vsp_account_page
end

Then(/^I be redirect to vsp account page$/) do
	step "I am on vsp Account page"
end