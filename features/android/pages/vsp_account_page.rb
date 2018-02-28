require 'calabash-android/abase'

class VspAccountPage < Calabash::ABase

def trait
	"android.widget.TextView text:'Conta'"
end

def settings_option
	"* id:'settings'"
end

def assert_vsp_account_page
	ids = [trait, settings_option]
    ids.each do |txt|
      check_element_exists(txt)
    end
end

end