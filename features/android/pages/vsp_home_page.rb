require 'calabash-android/abase'

class VspHomePage < Calabash::ABase

def trait
	"* id:'toolbarLogo'"
end

def no_internet_image_icon
	"* id:'image'"
end

def no_internet_text_info
	"* id:'text'"
end

def no_internet_try_again_button
	"* id:'button'"
end

def navigation_bar
	"* id:'navigation'"
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
	"* contentDescription:'menu_now'"
end

def explore_menu_option
	"* contentDescription:'menu_explore'"
end

def account_menu_option
	"* contentDescription:'menu_account'"
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

def current_channel
	return ######### TODO
end

def roll_to_channel(name)
	direction = [:up, :down].sample
	loop do
	    break if current_channel == name || counter == 20
		pan("* marked:'logo' index:1", direction)
		sleep(1)
	end
	assert_equal(name, current_channel, "Channel not found. Scrolled to ${direction}")
end

end