require 'test_helper'

class StudyCarrelsControllerTest < ActionController::TestCase
  setup do
    @study_carrel = study_carrels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:study_carrels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create study_carrel" do
    assert_difference('StudyCarrel.count') do
      post :create, study_carrel: { code: @study_carrel.code, max_number: @study_carrel.max_number }
    end

    assert_redirected_to study_carrel_path(assigns(:study_carrel))
  end

  test "should show study_carrel" do
    get :show, id: @study_carrel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study_carrel
    assert_response :success
  end

  test "should update study_carrel" do
    patch :update, id: @study_carrel, study_carrel: { code: @study_carrel.code, max_number: @study_carrel.max_number }
    assert_redirected_to study_carrel_path(assigns(:study_carrel))
  end

  test "should destroy study_carrel" do
    assert_difference('StudyCarrel.count', -1) do
      delete :destroy, id: @study_carrel
    end

    assert_redirected_to study_carrels_path
  end
end
