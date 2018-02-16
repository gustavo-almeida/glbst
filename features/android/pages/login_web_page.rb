require 'calabash-android/abase'
require 'base64'

class LoginWebPage < Calabash::ABase

def trait
    "webView css:'#lista-autorizadores'"
end

def globosat_operator_option
	"webView css:'img[alt*=\"Convidados\"]'"
end

def tap_globosat_operator_option
	##swipe down
	perform_action('drag', 70, 10, 80, 0, 90)
	touch(globosat_operator_option)
end

def assert_operator_page
	wait_for_element_exists(trait)
end

###### Login Form ######
def login_globosat_operator_content
	"webView css:'img[alt=\"Globosat Convidados\"]'"
end

def operator_username
	"webView css:'#login'"
end

def operator_password
	"webView css:'#senha'"
end

def enter_button
	"webView css:'input[type=\"submit\"]'"
end
#########################

######### Avatar Selection #########
def avatar_selector_title
	"webView xpath:'//*[contains(text(), \"Agora escolha seu perfil:\")]'"
end

def avatar_user_selector(name)
	"webView xpath:'//*[text()=\"#{name}\"]'"
end

def select_user_avatar(name)
	wait_for_element_exists(avatar_selector_title)
	touch(avatar_user_selector(name))
end
####################################

def fill_login_form
	wait_for_element_exists(login_globosat_operator_content)
	valid_user = CREDENTIALS[:valid_user]
	enter_text(operator_username, valid_user[:username])
	enter_text(operator_password, Base64.decode64(valid_user[:password]))
	touch(enter_button)
end

=begin
def click_operadora()
	#wait_for_element_exists("webView css:'.operadora'")
	wait_for_element_exists("webView css:'.operadora-bloco'")
	perform_action('drag', 50, 50, 70, 50, 10)
	sleep(1)
	gsat = query("webView css:'img'").last
	touch(gsat)
end

def login_operadora()
	wait_for_element_exists("webView css:'.container-fluid'")
	btn =  query("webview css:'input'")[2]
	enter_text("webView css:'#login'", "automacaoqa")
	ajuste_element_screen()
	enter_text("webView css:'#senha'", "qa01")
	touch(btn)
end

def click_avatar()
	wait_for_element_exists("webView css:'img'")
	sleep(1)
	avatar = query("webview css:'img'").first
	touch(avatar)
end
=end
end