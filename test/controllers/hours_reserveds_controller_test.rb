require 'test_helper'

class HoursReservedsControllerTest < ActionController::TestCase
  setup do
    @hours_reserved = hours_reserveds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hours_reserveds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hours_reserved" do
    assert_difference('HoursReserved.count') do
      post :create, hours_reserved: { hour: @hours_reserved.hour }
    end

    assert_redirected_to hours_reserved_path(assigns(:hours_reserved))
  end

  test "should show hours_reserved" do
    get :show, id: @hours_reserved
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hours_reserved
    assert_response :success
  end

  test "should update hours_reserved" do
    patch :update, id: @hours_reserved, hours_reserved: { hour: @hours_reserved.hour }
    assert_redirected_to hours_reserved_path(assigns(:hours_reserved))
  end

  test "should destroy hours_reserved" do
    assert_difference('HoursReserved.count', -1) do
      delete :destroy, id: @hours_reserved
    end

    assert_redirected_to hours_reserveds_path
  end
end
