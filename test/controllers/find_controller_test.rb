require 'test_helper'

class FindControllerTest < ActionDispatch::IntegrationTest
  test "should get order" do
    get find_order_url
    assert_response :success
  end

end
