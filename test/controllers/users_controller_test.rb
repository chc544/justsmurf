require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "JUSTSMURF"
  end  

  test "should get account" do
    get account_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

end
