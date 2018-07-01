require 'test_helper'

class RecommendsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get recommends_create_url
    assert_response :success
  end

  test "should get index" do
    get recommends_index_url
    assert_response :success
  end

  test "should get destroy" do
    get recommends_destroy_url
    assert_response :success
  end

end
