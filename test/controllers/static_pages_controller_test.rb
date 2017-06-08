require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "help | #{@base_title}"
  end

  test "should get faq" do
    get static_pages_faq_url
    assert_response :success
    assert_select "title", "faq | #{@base_title}"
  end

  test "should get apply" do
    get static_pages_apply_url
    assert_response :success
    assert_select "title", "apply | #{@base_title}"
  end

  test "should get account" do
    get static_pages_account_url
    assert_response :success
    assert_select "title", "account | #{@base_title}"
  end

  test "should get checkout" do
    get static_pages_checkout_url
    assert_response :success
    assert_select "title", "checkout | #{@base_title}"
  end

end
