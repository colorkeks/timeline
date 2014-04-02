require 'test_helper'

class TimePointsControllerTest < ActionController::TestCase
  setup do
    @time_point = time_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_point" do
    assert_difference('TimePoint.count') do
      post :create, time_point: { importance: @time_point.importance, start_date: @time_point.start_date, timeline_id: @time_point.timeline_id, title: @time_point.title }
    end

    assert_redirected_to time_point_path(assigns(:time_point))
  end

  test "should show time_point" do
    get :show, id: @time_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_point
    assert_response :success
  end

  test "should update time_point" do
    patch :update, id: @time_point, time_point: { importance: @time_point.importance, start_date: @time_point.start_date, timeline_id: @time_point.timeline_id, title: @time_point.title }
    assert_redirected_to time_point_path(assigns(:time_point))
  end

  test "should destroy time_point" do
    assert_difference('TimePoint.count', -1) do
      delete :destroy, id: @time_point
    end

    assert_redirected_to time_points_path
  end
end
