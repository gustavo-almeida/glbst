require 'calabash-android/abase'

class WizardPage < Calabash::ABase

  def trait
    "* id:'logo'"
  end

  def next_button
    "* id:'button'"
  end

  def bold_text
    query("android.widget.TextView index:0",:text).first
  end

  def sub_text
    query("android.widget.TextView index:1",:text).first
  end

  def button_label(id)
    query(id, :text).first
  end

  def next_button_label
    button_label(next_button)
  end

  def tap_next_button
    touch(next_button)
  end

  def assert_page_text(expected_text, actual_text)
    unless expected_text == actual_text
      fail "Text is incorrect. Expected '#{expected_text}', but got '#{actual_text}'."
    end
  end

  def assert_button_label(expected_label, actual_label)
    assert_page_text(expected_label, actual_label)
  end

  def assert_first_page_content
    sleep(1)
    first = WIZARD_TEXTS[:first_page]
    assert_page_text(first[:bold_text], bold_text)
    assert_page_text(first[:sub_text], sub_text)
    assert_button_label(first[:next_button],next_button_label)
  end

  def assert_second_page_content
    sleep(1)
    second = WIZARD_TEXTS[:second_page]
    assert_page_text(second[:bold_text], bold_text)
    assert_page_text(second[:sub_text], sub_text)
    assert_button_label(second[:next_button],next_button_label)
  end

  def assert_third_page_content
    sleep(1)
    third = WIZARD_TEXTS[:third_page]
    assert_page_text(third[:bold_text], bold_text)
    assert_page_text(third[:sub_text], sub_text)
    assert_button_label(third[:next_button],next_button_label)
  end

  def assert_fourth_page_content
    sleep(1)
    fourth = WIZARD_TEXTS[:fourth_page]
    assert_page_text(fourth[:bold_text], bold_text)
    assert_page_text(fourth[:sub_text], sub_text)
    assert_button_label(fourth[:next_button],next_button_label)
  end
end
