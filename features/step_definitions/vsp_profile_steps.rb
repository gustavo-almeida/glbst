Given(/^I am on vsp Profile page$/) do
	@current_page = page(VspProfilePage).await(timeout: 30)
	@current_page.assert_vsp_profile_page
end

Then(/^I be redirect to vsp profile page$/) do
	step "I am on vsp Profile page"
end