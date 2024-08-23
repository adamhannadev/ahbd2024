require "application_system_test_case"

class FootworksTest < ApplicationSystemTestCase
  setup do
    @footwork = footworks(:one)
  end

  test "visiting the index" do
    visit footworks_url
    assert_selector "h1", text: "Footworks"
  end

  test "should create footwork" do
    visit footworks_url
    click_on "New footwork"

    fill_in "Name", with: @footwork.name
    click_on "Create Footwork"

    assert_text "Footwork was successfully created"
    click_on "Back"
  end

  test "should update Footwork" do
    visit footwork_url(@footwork)
    click_on "Edit this footwork", match: :first

    fill_in "Name", with: @footwork.name
    click_on "Update Footwork"

    assert_text "Footwork was successfully updated"
    click_on "Back"
  end

  test "should destroy Footwork" do
    visit footwork_url(@footwork)
    click_on "Destroy this footwork", match: :first

    assert_text "Footwork was successfully destroyed"
  end
end
