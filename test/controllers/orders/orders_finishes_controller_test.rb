require 'test_helper'

class Orders::OrdersFinishesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get orders_orders_finishes_show_url
    assert_response :success
  end

  test "should get create" do
    get orders_orders_finishes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get orders_orders_finishes_destroy_url
    assert_response :success
  end

end
