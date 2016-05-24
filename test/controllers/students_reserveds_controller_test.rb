require 'test_helper'

class StudentsReservedsControllerTest < ActionController::TestCase
  setup do
    @students_reserved = students_reserveds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students_reserveds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create students_reserved" do
    assert_difference('StudentsReserved.count') do
      post :create, students_reserved: {  }
    end

    assert_redirected_to students_reserved_path(assigns(:students_reserved))
  end

  test "should show students_reserved" do
    get :show, id: @students_reserved
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @students_reserved
    assert_response :success
  end

  test "should update students_reserved" do
    patch :update, id: @students_reserved, students_reserved: {  }
    assert_redirected_to students_reserved_path(assigns(:students_reserved))
  end

  test "should destroy students_reserved" do
    assert_difference('StudentsReserved.count', -1) do
      delete :destroy, id: @students_reserved
    end

    assert_redirected_to students_reserveds_path
  end
end
