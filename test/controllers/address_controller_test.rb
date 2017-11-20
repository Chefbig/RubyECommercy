require 'test_helper'

class AddressControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get address_show_url
    assert_response :success
  end

  test "should get add_address" do
    get address_add_address_url
    assert_response :success
  end

  test "should get update" do
    get address_update_url
    assert_response :success
  end

end
