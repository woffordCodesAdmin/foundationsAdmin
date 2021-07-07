require "application_system_test_case"

class DailyVidsTest < ApplicationSystemTestCase
  setup do
    @daily_vid = daily_vids(:one)
  end

  test "visiting the index" do
    visit daily_vids_url
    assert_selector "h1", text: "Daily Vids"
  end

  test "creating a Daily vid" do
    visit daily_vids_url
    click_on "New Daily Vid"

    fill_in "Description", with: @daily_vid.description
    fill_in "Frame url", with: @daily_vid.frame_url
    fill_in "Title", with: @daily_vid.title
    click_on "Create Daily vid"

    assert_text "Daily vid was successfully created"
    click_on "Back"
  end

  test "updating a Daily vid" do
    visit daily_vids_url
    click_on "Edit", match: :first

    fill_in "Description", with: @daily_vid.description
    fill_in "Frame url", with: @daily_vid.frame_url
    fill_in "Title", with: @daily_vid.title
    click_on "Update Daily vid"

    assert_text "Daily vid was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily vid" do
    visit daily_vids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily vid was successfully destroyed"
  end
end
