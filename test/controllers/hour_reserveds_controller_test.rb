require 'test_helper'

class HourReservedsControllerTest < ActionController::TestCase
  setup do
    @hour_reserved = hour_reserveds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hour_reserveds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hour_reserved" do
    assert_difference('HourReserved.count') do
      post :create, hour_reserved: {  }
    end

    assert_redirected_to hour_reserved_path(assigns(:hour_reserved))
  end

  test "should show hour_reserved" do
    get :show, id: @hour_reserved
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hour_reserved
    assert_response :success
  end

  test "should update hour_reserved" do
    patch :update, id: @hour_reserved, hour_reserved: {  }
    assert_redirected_to hour_reserved_path(assigns(:hour_reserved))
  end

  test "should destroy hour_reserved" do
    assert_difference('HourReserved.count', -1) do
      delete :destroy, id: @hour_reserved
    end

    assert_redirected_to hour_reserveds_path
  end
end
