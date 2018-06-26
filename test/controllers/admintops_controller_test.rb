require 'test_helper'

class AdmintopsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get admintops_top_url
    assert_response :success
  end

end
