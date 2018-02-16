require 'calabash-android/abase'

class VspHomePage < Calabash::ABase

def trait
	"* id:'toolbarLogo'"
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