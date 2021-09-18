require "test_helper"

class LearnsControllerTest < ActionDispatch::IntegrationTest
  test "should get lionsocial" do
    get learns_lionsocial_url
    assert_response :success
  end

  test "should get moviemakers" do
    get learns_moviemakers_url
    assert_response :success
  end

  test "should get railsforums" do
    get learns_railsforums_url
    assert_response :success
  end

  test "should get index" do
    get learns_index_url
    assert_response :success
  end
end
