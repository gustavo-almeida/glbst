require 'calabash-android/abase'

class ProfilePage < Calabash::ABase

def trait
	"* id:'toolbar_title_textview'"
end

def expected_title
	"PERFIL"
end

def assert_profile_page
	current_title = query(trait, :text).first
	unless expected_title == current_title 
    	raise "You are not on ProfilePage, or title #{expected_title} has probably changed to #{current_title}"
  	end
end

end