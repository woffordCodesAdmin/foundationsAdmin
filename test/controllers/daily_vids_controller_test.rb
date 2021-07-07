require "test_helper"

class DailyVidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_vid = daily_vids(:one)
  end

  test "should get index" do
    get daily_vids_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_vid_url
    assert_response :success
  end

  test "should create daily_vid" do
    assert_difference('DailyVid.count') do
      post daily_vids_url, params: { daily_vid: { description: @daily_vid.description, frame_url: @daily_vid.frame_url, title: @daily_vid.title } }
    end

    assert_redirected_to daily_vid_url(DailyVid.last)
  end

  test "should show daily_vid" do
    get daily_vid_url(@daily_vid)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_vid_url(@daily_vid)
    assert_response :success
  end

  test "should update daily_vid" do
    patch daily_vid_url(@daily_vid), params: { daily_vid: { description: @daily_vid.description, frame_url: @daily_vid.frame_url, title: @daily_vid.title } }
    assert_redirected_to daily_vid_url(@daily_vid)
  end

  test "should destroy daily_vid" do
    assert_difference('DailyVid.count', -1) do
      delete daily_vid_url(@daily_vid)
    end

    assert_redirected_to daily_vids_url
  end
end
