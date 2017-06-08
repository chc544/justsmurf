require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "help | #{@base_title}"
  end

  test "should get faq" do
    get faq_path
    assert_response :success
    assert_select "title", "faq | #{@base_title}"
  end

  test "should get apply" do
    get apply_path
    assert_response :success
    assert_select "title", "apply | #{@base_title}"
  end

  test "should get account" do
    get account_path
    assert_response :success
    assert_select "title", "account | #{@base_title}"
  end

  test "should get checkout" do
    get checkout_path
    assert_response :success
    assert_select "title", "checkout | #{@base_title}"
  end

end
