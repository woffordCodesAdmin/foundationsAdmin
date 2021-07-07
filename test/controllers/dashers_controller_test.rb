require "test_helper"

class DashersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dasher = dashers(:one)
  end

  test "should get index" do
    get dashers_url
    assert_response :success
  end

  test "should get new" do
    get new_dasher_url
    assert_response :success
  end

  test "should create dasher" do
    assert_difference('Dasher.count') do
      post dashers_url, params: { dasher: { index: @dasher.index } }
    end

    assert_redirected_to dasher_url(Dasher.last)
  end

  test "should show dasher" do
    get dasher_url(@dasher)
    assert_response :success
  end

  test "should get edit" do
    get edit_dasher_url(@dasher)
    assert_response :success
  end

  test "should update dasher" do
    patch dasher_url(@dasher), params: { dasher: { index: @dasher.index } }
    assert_redirected_to dasher_url(@dasher)
  end

  test "should destroy dasher" do
    assert_difference('Dasher.count', -1) do
      delete dasher_url(@dasher)
    end

    assert_redirected_to dashers_url
  end
end
