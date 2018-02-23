require 'calabash-cucumber/ibase'

class VspExplorePage < Calabash::IBase

def trait
	"* id:'Explore'"
end

def search_option
	"* id:'search'" #####TODO
end

def assert_vsp_explore_page
	ids = [trait, search_option]
    ids.each do |txt|
      check_element_exists(txt)
    end
end

end