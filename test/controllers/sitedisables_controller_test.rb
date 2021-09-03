require "test_helper"

class SitedisablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitedisable = sitedisables(:one)
  end

  test "should get index" do
    get sitedisables_url
    assert_response :success
  end

  test "should get new" do
    get new_sitedisable_url
    assert_response :success
  end

  test "should create sitedisable" do
    assert_difference('Sitedisable.count') do
      post sitedisables_url, params: { sitedisable: { disable: @sitedisable.disable } }
    end

    assert_redirected_to sitedisable_url(Sitedisable.last)
  end

  test "should show sitedisable" do
    get sitedisable_url(@sitedisable)
    assert_response :success
  end

  test "should get edit" do
    get edit_sitedisable_url(@sitedisable)
    assert_response :success
  end

  test "should update sitedisable" do
    patch sitedisable_url(@sitedisable), params: { sitedisable: { disable: @sitedisable.disable } }
    assert_redirected_to sitedisable_url(@sitedisable)
  end

  test "should destroy sitedisable" do
    assert_difference('Sitedisable.count', -1) do
      delete sitedisable_url(@sitedisable)
    end

    assert_redirected_to sitedisables_url
  end
end
