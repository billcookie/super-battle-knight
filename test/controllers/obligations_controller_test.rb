require "test_helper"

class ObligationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get obligations_new_url
    assert_response :success
  end
end
