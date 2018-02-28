require 'calabash-cucumber/ibase'

class VspExplorePage < Calabash::IBase

def trait
	"UILabel marked:'Explore' index:0"
end

def search_option
	"* marked:'action_search'"
end

def assert_vsp_explore_page
	ids = [trait, search_option]
    ids.each do |txt|
      check_element_exists(txt)
    end
end

end