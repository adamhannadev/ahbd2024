require "application_system_test_case"

class FootPositionsTest < ApplicationSystemTestCase
  setup do
    @foot_position = foot_positions(:one)
  end

  test "visiting the index" do
    visit foot_positions_url
    assert_selector "h1", text: "Foot positions"
  end

  test "should create foot position" do
    visit foot_positions_url
    click_on "New foot position"

    fill_in "Name", with: @foot_position.name
    click_on "Create Foot position"

    assert_text "Foot position was successfully created"
    click_on "Back"
  end

  test "should update Foot position" do
    visit foot_position_url(@foot_position)
    click_on "Edit this foot position", match: :first

    fill_in "Name", with: @foot_position.name
    click_on "Update Foot position"

    assert_text "Foot position was successfully updated"
    click_on "Back"
  end

  test "should destroy Foot position" do
    visit foot_position_url(@foot_position)
    click_on "Destroy this foot position", match: :first

    assert_text "Foot position was successfully destroyed"
  end
end
