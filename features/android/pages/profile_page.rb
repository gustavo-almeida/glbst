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

def logout_button
	"* id:'exit_profile'"
end

def tap_logout_button
	drag_until(logout_button)
	touch(logout_button)
end

###### Alert logout confirmation #######
def alert_logout_yes_button
	"* id:'button1'"
end

def alert_logout_no_button
	"* id:'button2'"
end

def tap_alert_logout_yes_button
	touch(alert_logout_yes_button)
end

def tap_alert_logout_no_button
	touch(alert_logout_no_button)
end
#######################################

def drag_until(element_id)
	q = query(element_id)
    counter = 0
    while q.empty?
        break if counter == 5
        perform_action('drag', 70, 10, 80, 0, 90)
        q = query(element_id)
        counter = counter + 1
    end
    if counter == 5
        fail("The button with the id:'#{element_id}' could not be found")
    else
        puts "Element #{element_id} found. Proceeding with next step."
    end
end

end