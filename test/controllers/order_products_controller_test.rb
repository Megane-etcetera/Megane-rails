require 'test_helper'

class OrderProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get order_products_new_url
    assert_response :success
  end

  test "should get create" do
    get order_products_create_url
    assert_response :success
  end

  test "should get index" do
    get order_products_index_url
    assert_response :success
  end

  test "should get show" do
    get order_products_show_url
    assert_response :success
  end

  test "should get edit" do
    get order_products_edit_url
    assert_response :success
  end

  test "should get update" do
    get order_products_update_url
    assert_response :success
  end

  test "should get destroy" do
    get order_products_destroy_url
    assert_response :success
  end

end
