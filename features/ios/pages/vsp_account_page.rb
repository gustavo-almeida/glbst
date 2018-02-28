require 'calabash-cucumber/ibase'

class VspAccountPage < Calabash::IBase

def trait
	"* id:'Conta'"
end

def settings_option
	"* id:'settings'"  #####TODO
end

def assert_vsp_profile_page
	ids = [trait, settings_option]
    ids.each do |txt|
      check_element_exists(txt)
    end
end

end