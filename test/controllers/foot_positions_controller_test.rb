require "test_helper"

class FootPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foot_position = foot_positions(:one)
  end

  test "should get index" do
    get foot_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_foot_position_url
    assert_response :success
  end

  test "should create foot_position" do
    assert_difference("FootPosition.count") do
      post foot_positions_url, params: { foot_position: { position: @foot_position.position } }
    end

    assert_redirected_to foot_position_url(FootPosition.last)
  end

  test "should show foot_position" do
    get foot_position_url(@foot_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_foot_position_url(@foot_position)
    assert_response :success
  end

  test "should update foot_position" do
    patch foot_position_url(@foot_position), params: { foot_position: { position: @foot_position.position } }
    assert_redirected_to foot_position_url(@foot_position)
  end

  test "should destroy foot_position" do
    assert_difference("FootPosition.count", -1) do
      delete foot_position_url(@foot_position)
    end

    assert_redirected_to foot_positions_url
  end
end
