require 'test_helper'

class RegionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get regions_index_url
    assert_response :success
  end

  test "should get edit" do
    get regions_edit_url
    assert_response :success
  end

  test "should get update" do
    get regions_update_url
    assert_response :success
  end

end
