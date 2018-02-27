Given(/^I am on the first tutorial screen$/) do
  @current_page = page(GsatPlayTutorialPage).await(timeout: 30)
  @current_page.assert_first_page_content
end

When(/^I tap Next$/) do
  @current_page.tap_next_button
end

When(/^I tap Next until the third tutorial screen$/) do
  for i in 0..1
    step "I tap Next"
  end
end

When(/^I tap Next until the fourth tutorial screen$/) do
  for i in 0..2
    step "I tap Next"
  end
end

When(/^I swipe to the third tutorial screen$/) do
  for i in 0..1
    step "I swipe screen to left"
  end
end

When(/^I swipe to the fourth tutorial screen$/) do
  for i in 0..2
    step "I swipe screen to left"
  end
end

When(/^I advance to homepage$/) do
  for i in 0..1
    step "I swipe screen to left"
  end
  for i in 0..2
    step "I tap Next"
  end
end

Then(/^I see to second tutorial screen$/) do
  @current_page.assert_second_page_content
end

Then(/^I see to third tutorial screen$/) do
  @current_page.assert_third_page_content
end

Then(/^I see to fourth tutorial screen$/) do
  @current_page.assert_fourth_page_content
end
