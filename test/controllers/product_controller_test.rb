require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get find" do
    get product_find_url
    assert_response :success
  end

  test "should get order" do
    get product_order_url
    assert_response :success
  end

end
