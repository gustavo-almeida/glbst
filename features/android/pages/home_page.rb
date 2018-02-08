require 'calabash-android/abase'

class HomePage < Calabash::ABase


######### News View 3G/4G ###########
#elements
def news_view_title
    "* text:'NOVIDADE'"
end

def news_view_close_option
	"* id:'close'"
end

def news_view_adjust_now_button
	"* id:'adjust_now'"
end

def news_view_not_now_option
	"* id:'not_now'"
end

#actions
def tap_close_option
	touch(news_view_close_option)
end

def tap_not_now_option
	touch(news_view_not_now_option)
end

def tap_adjust_now_option
	touch(news_view_adjust_now_button)
end

def assert_news_view_showed
	check_element_exists news_view_title
end
####################################

def trait
	"* id:'toolbar_logo_imageview'"
end

def logo
	trait
end

def sandwich_menu
	"* id:'toolbar_left_imageview'"
end

def search_button
	"* id:'toolbar_right_imageview'"
end

def assert_header_present
    ids = [logo, sandwich_menu, search_button]
    ids.each do |txt|
      check_element_exists txt
    end
end

end