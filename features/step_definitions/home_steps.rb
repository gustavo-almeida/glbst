Then(/^I see a speed change feature notification$/) do
	@current_page = page(HomePage).await(timeout: 30)
  	@current_page.assert_news_view_showed
end
