require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get order" do
    get order_order_url
    assert_response :success
  end

end
