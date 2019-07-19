require 'test_helper'

class RevenuesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get revenues_new_url
    assert_response :success
  end

  test "should get create" do
    get revenues_create_url
    assert_response :success
  end

end
