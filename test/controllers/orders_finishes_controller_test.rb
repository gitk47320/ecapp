require 'test_helper'

class OrdersFinishesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get orders_finishes_show_url
    assert_response :success
  end

end
