require 'test_helper'

class HourdateReservedsControllerTest < ActionController::TestCase
  setup do
    @hourdate_reserved = hourdate_reserveds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hourdate_reserveds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hourdate_reserved" do
    assert_difference('HourdateReserved.count') do
      post :create, hourdate_reserved: { fecha: @hourdate_reserved.fecha, hora: @hourdate_reserved.hora }
    end

    assert_redirected_to hourdate_reserved_path(assigns(:hourdate_reserved))
  end

  test "should show hourdate_reserved" do
    get :show, id: @hourdate_reserved
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hourdate_reserved
    assert_response :success
  end

  test "should update hourdate_reserved" do
    patch :update, id: @hourdate_reserved, hourdate_reserved: { fecha: @hourdate_reserved.fecha, hora: @hourdate_reserved.hora }
    assert_redirected_to hourdate_reserved_path(assigns(:hourdate_reserved))
  end

  test "should destroy hourdate_reserved" do
    assert_difference('HourdateReserved.count', -1) do
      delete :destroy, id: @hourdate_reserved
    end

    assert_redirected_to hourdate_reserveds_path
  end
end
