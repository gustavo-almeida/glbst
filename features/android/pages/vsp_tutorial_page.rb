require 'calabash-android/abase'

class VspTutorialPage < Calabash::ABase

  def trait
    "* id:'title'"
  end

  def title
    query("* id:'title'",:text)[0]
  end

  def text
    query("* id:'text'",:text)[0]
  end

  def ok_button
    "* marked:'btn_ok'"
  end

  def not_now_button
    "* marked:'btn_not_now'" 
  end

  def tap_ok_button
    touch(ok_button)
  end

  def tap_not_now_button
    touch(not_now_button)
  end

  def assert_page_text(expected_text, actual_text)
    unless expected_text == actual_text
      fail "Text is incorrect. Expected '#{expected_text}', but got '#{actual_text}'."
    end
  end

  def assert_tutorial_first_page_content
    sleep(1)
    first = VSP_TUTORIAL_TEXTS[:first_page]
    assert_page_text(first[:title], title)
    assert_page_text(first[:text], text)
    element_exists(ok_button)
    element_exists(not_now_button)
  end

  def assert_tutorial_second_page_content
    sleep(1)
    second = VSP_TUTORIAL_TEXTS[:second_page]
    assert_page_text(second[:title], title)
    assert_page_text(second[:text], text)
    element_exists(ok_button)
    element_exists(not_now_button)
  end
end