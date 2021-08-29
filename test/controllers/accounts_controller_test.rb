require "test_helper"

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get data" do
    get accounts_data_url
    assert_response :success
  end

  test "should get personal" do
    get accounts_personal_url
    assert_response :success
  end
end
