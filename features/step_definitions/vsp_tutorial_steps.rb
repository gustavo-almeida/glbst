Given(/^I am on the first tutorial vsp screen$/) do
	@current_page = page(VspTutorialPage).await(timeout: 30)
  	@current_page.assert_tutorial_first_page_content
end

Then(/^I should stay on first tutorial vsp screen$/) do
	@current_page.assert_tutorial_first_page_content
end

Given(/^I am on the second tutorial vsp screen$/) do
	@current_page = page(VspTutorialPage).await(timeout: 30)
	step "I am on the first tutorial vsp screen"
	step "I reject receive notifications"
	@current_page.assert_tutorial_second_page_content
end

Then(/^I should stay on second tutorial vsp screen$/) do
	@current_page.assert_tutorial_second_page_content
end

When(/^I accept receive notifications$/) do
	@current_page.tap_ok_button
end

Then(/^I am now able to receive notifications from app$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I reject receive notifications$/) do
	@current_page.tap_not_now_button
end

Then(/^I am now unable to receive notifications from app$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I advance to next tutorial screen$/) do
	step "I reject receive notifications"
end

When(/^I accept share my geolocalization$/) do
	@current_page.assert_tutorial_second_page_content
	@current_page.tap_ok_button
end

Then(/^I am now able to watch local content easily$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I reject share my geolocalization$/) do
	@current_page.assert_tutorial_second_page_content
	@current_page.tap_not_now_button
end

Then(/^I am now unable to watch local content easily$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I reject both options$/) do
	@current_page.tap_not_now_button
	@current_page.assert_tutorial_second_page_content
	@current_page.tap_not_now_button
end

Then(/^I am redirect to homepage$/) do
	@current_page = page(VspHomePage).await(timeout: 30)
	@current_page.assert_home
end

Then(/^with both options disabled$/) do
  pending # Write code here that turns the phrase above into concrete actions
end