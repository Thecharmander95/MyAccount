require "application_system_test_case"

class SitedisablesTest < ApplicationSystemTestCase
  setup do
    @sitedisable = sitedisables(:one)
  end

  test "visiting the index" do
    visit sitedisables_url
    assert_selector "h1", text: "Sitedisables"
  end

  test "creating a Sitedisable" do
    visit sitedisables_url
    click_on "New Sitedisable"

    fill_in "Disable", with: @sitedisable.disable
    click_on "Create Sitedisable"

    assert_text "Sitedisable was successfully created"
    click_on "Back"
  end

  test "updating a Sitedisable" do
    visit sitedisables_url
    click_on "Edit", match: :first

    fill_in "Disable", with: @sitedisable.disable
    click_on "Update Sitedisable"

    assert_text "Sitedisable was successfully updated"
    click_on "Back"
  end

  test "destroying a Sitedisable" do
    visit sitedisables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sitedisable was successfully destroyed"
  end
end
