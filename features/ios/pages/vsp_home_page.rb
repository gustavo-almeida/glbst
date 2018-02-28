require 'calabash-cucumber/ibase'

class VspHomePage < Calabash::IBase

def trait
	"* id:'Agora'"
end

def no_internet_image_icon
	"* id:'image'" ######## TODO
end

def no_internet_text_info
	"* id:'text'"  ######## TODO
end

def no_internet_try_again_button
	"* id:'button'" ######## TODO
end

def navigation_bar
	"UITabBar"
end

def assert_home
	ids = [trait, navigation_bar]
    ids.each do |txt|
      check_element_exists txt
    end
end

def assert_no_internet_alert
	ids = [no_internet_image_icon, no_internet_text_info, no_internet_try_again_button]
    ids.each do |txt|
      check_element_exists txt
    end
end

def now_menu_option
	"* id:'menu_now'"
end

def explore_menu_option
	"* id:'menu_explore'"
end

def account_menu_option
	"* id:'menu_account'"
end

def tap_menu_now_option
	touch(now_menu_option)
end

def tap_menu_explore_option
	touch(explore_menu_option)
end

def tap_menu_account_option
	touch(account_menu_option)
end

end