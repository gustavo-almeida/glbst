
Given(/^I am about to login$/) do

  @current_page = page(LoginPage).await(timeout: 30)
  @current_page.self_hosted_site


end



When(/^I enter invalid credentials$/) do
  user = CREDENTIALS[:invalid_user]
  @current_page = @current_page.login(user[:username],
                                      user[:password],
                                      CREDENTIALS[:site])
end

Then(/^I am presented with an error message to correct credentials$/) do
  #TODO
end

When(/^I enter valid credentials$/) do
  user = CREDENTIALS[:valid_user]
  @current_page = @current_page.login(user[:username],
                                      user[:password],
                                      CREDENTIALS[:site])
end

Then(/^I am successfully authenticated$/) do
  unless @current_page.is_a?(SitePage)
    raise "Expected SitePage, but found #{@current_page}"
  end
end

When(/^I can see posts for the site$/) do
  @current_page.to_posts
end

Given(/^I am on the first experience screen$/) do
  @current_page = page(LoginPage).await(timeout: 30)
end

When(/^I choose to get more information$/) do
  @current_page = @current_page.more_information

end
Then(/^I am taking to the information screen$/) do
  unless @current_page.is_a?(InfoPage)
    raise "Expected InfoPage, but found #{@current_page}"
  end

  @current_page.assert_info_present
end

Then(/^I am able to create an account$/) do
  @current_page.assert_can_create_account
end