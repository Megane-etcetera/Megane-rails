require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orders_index_url
    assert_response :success
  end

  test "should get address" do
    get orders_address_url
    assert_response :success
  end

  test "should get payment" do
    get orders_payment_url
    assert_response :success
  end

  test "should get decision" do
    get orders_decision_url
    assert_response :success
  end

  test "should get create" do
    get orders_create_url
    assert_response :success
  end

end
