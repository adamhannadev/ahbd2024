require "test_helper"

class FootworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footwork = footworks(:one)
  end

  test "should get index" do
    get footworks_url
    assert_response :success
  end

  test "should get new" do
    get new_footwork_url
    assert_response :success
  end

  test "should create footwork" do
    assert_difference("Footwork.count") do
      post footworks_url, params: { footwork: { footwork: @footwork.footwork } }
    end

    assert_redirected_to footwork_url(Footwork.last)
  end

  test "should show footwork" do
    get footwork_url(@footwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_footwork_url(@footwork)
    assert_response :success
  end

  test "should update footwork" do
    patch footwork_url(@footwork), params: { footwork: { footwork: @footwork.footwork } }
    assert_redirected_to footwork_url(@footwork)
  end

  test "should destroy footwork" do
    assert_difference("Footwork.count", -1) do
      delete footwork_url(@footwork)
    end

    assert_redirected_to footworks_url
  end
end
