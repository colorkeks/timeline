require 'test_helper'

class TimeItemsControllerTest < ActionController::TestCase
  setup do
    @time_item = time_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_item" do
    assert_difference('TimeItem.count') do
      post :create, time_item: { end_date: @time_item.end_date, importance: @time_item.importance, start_date: @time_item.start_date, timeline_id: @time_item.timeline_id, title: @time_item.title }
    end

    assert_redirected_to time_item_path(assigns(:time_item))
  end

  test "should show time_item" do
    get :show, id: @time_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_item
    assert_response :success
  end

  test "should update time_item" do
    patch :update, id: @time_item, time_item: { end_date: @time_item.end_date, importance: @time_item.importance, start_date: @time_item.start_date, timeline_id: @time_item.timeline_id, title: @time_item.title }
    assert_redirected_to time_item_path(assigns(:time_item))
  end

  test "should destroy time_item" do
    assert_difference('TimeItem.count', -1) do
      delete :destroy, id: @time_item
    end

    assert_redirected_to time_items_path
  end
end
