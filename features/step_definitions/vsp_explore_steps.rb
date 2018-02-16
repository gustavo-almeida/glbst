Given(/^I am on vsp Explore page$/) do
	@current_page = page(VspExplorePage).await(timeout: 30)
	@current_page.assert_vsp_explore_page
end

Then(/^I be redirect to vsp explore page$/) do
	step "I am on vsp Explore page"
end