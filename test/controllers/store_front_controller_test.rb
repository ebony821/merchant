require 'test_helper'

class StoreFrontControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_front_index_url
    assert_response :success
  end

  test "should get about" do
    get store_front_about_url
    assert_response :success
  end

end
