require 'calabash-android/abase'

class VspProfilePage < Calabash::ABase

def trait
	"android.widget.TextView text:'Perfil'"
end

def settings_option
	"* id:'settings'"
end

def assert_vsp_profile_page
	ids = [trait, settings_option]
    ids.each do |txt|
      check_element_exists(txt)
    end
end

end