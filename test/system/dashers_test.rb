require "application_system_test_case"

class DashersTest < ApplicationSystemTestCase
  setup do
    @dasher = dashers(:one)
  end

  test "visiting the index" do
    visit dashers_url
    assert_selector "h1", text: "Dashers"
  end

  test "creating a Dasher" do
    visit dashers_url
    click_on "New Dasher"

    fill_in "Index", with: @dasher.index
    click_on "Create Dasher"

    assert_text "Dasher was successfully created"
    click_on "Back"
  end

  test "updating a Dasher" do
    visit dashers_url
    click_on "Edit", match: :first

    fill_in "Index", with: @dasher.index
    click_on "Update Dasher"

    assert_text "Dasher was successfully updated"
    click_on "Back"
  end

  test "destroying a Dasher" do
    visit dashers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dasher was successfully destroyed"
  end
end
