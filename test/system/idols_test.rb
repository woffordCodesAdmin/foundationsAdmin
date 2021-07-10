require "application_system_test_case"

class IdolsTest < ApplicationSystemTestCase
  setup do
    @idol = idols(:one)
  end

  test "visiting the index" do
    visit idols_url
    assert_selector "h1", text: "Idols"
  end

  test "creating a Idol" do
    visit idols_url
    click_on "New Idol"

    fill_in "Description", with: @idol.description
    fill_in "Name", with: @idol.name
    fill_in "Photo", with: @idol.photo
    fill_in "Video", with: @idol.video
    click_on "Create Idol"

    assert_text "Idol was successfully created"
    click_on "Back"
  end

  test "updating a Idol" do
    visit idols_url
    click_on "Edit", match: :first

    fill_in "Description", with: @idol.description
    fill_in "Name", with: @idol.name
    fill_in "Photo", with: @idol.photo
    fill_in "Video", with: @idol.video
    click_on "Update Idol"

    assert_text "Idol was successfully updated"
    click_on "Back"
  end

  test "destroying a Idol" do
    visit idols_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idol was successfully destroyed"
  end
end
