require 'calabash-android/abase'

class GsatPlayHomePage < Calabash::ABase


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

def tap_sandwich_menu
	touch(sandwich_menu)
end

def assert_header_present
    ids = [logo, sandwich_menu, search_button]
    ids.each do |txt|
      check_element_exists txt
    end
end

############ Menu Sandwich #############
def profile_image_option
	"* id:'menu_header_image'"
end

def logged_out_label
    "android.widget.TextView marked:'ENTRAR'"
end

def logged_in_label
	"* id:'menu_header_description'"
end

def tap_profile_image_option
	sleep(1)
	touch(profile_image_option)
end

def assert_user_logged_out
	element_exists(logged_out_label)
end

def assert_user_logged_in
	element_exists(logged_in_label)
end
#########################################

end