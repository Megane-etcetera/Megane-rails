require 'test_helper'

class LabelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get labels_index_url
    assert_response :success
  end

<<<<<<< HEAD
=======
  test "should get new" do
    get labels_new_url
    assert_response :success
  end

>>>>>>> 242015dbcfb18600eaae9bd97660c8c862d61a61
  test "should get create" do
    get labels_create_url
    assert_response :success
  end

<<<<<<< HEAD
=======
  test "should get edit" do
    get labels_edit_url
    assert_response :success
  end

  test "should get update" do
    get labels_update_url
    assert_response :success
  end

>>>>>>> 242015dbcfb18600eaae9bd97660c8c862d61a61
  test "should get destroy" do
    get labels_destroy_url
    assert_response :success
  end

end
