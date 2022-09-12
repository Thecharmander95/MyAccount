require "test_helper"

class HAHAsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get HAHAs_index_url
    assert_response :success
  end
end
