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

def nb_profile_option
	"* id:'profile'"
end

def nb_explore_option
	"* id:'explore'"
end

def tap_nb_explore_option
	touch(nb_explore_option)
end

def tap_nb_profile_option
	touch(nb_profile_option)
end

end