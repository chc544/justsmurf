require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "JUSTSMURF"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{@base_title} | help"
  end

  test "should get faq" do
    get faq_path
    assert_response :success
    assert_select "title", "#{@base_title} | faq"
  end

  test "should get apply" do
    get apply_path
    assert_response :success
    assert_select "title", "#{@base_title} | apply"
  end

  test "should get checkout" do
    get checkout_path
    assert_response :success
    assert_select "title", "#{@base_title} | checkout"
  end

end
