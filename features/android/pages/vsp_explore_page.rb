require 'calabash-android/abase'

class VspExplorePage < Calabash::ABase

def trait
	"android.widget.TextView text:'Explore'"
end

def search_option
	"* id:'search'"
end

def assert_vsp_explore_page
	ids = [trait, search_option]
    ids.each do |txt|
      check_element_exists(txt)
    end
end

end