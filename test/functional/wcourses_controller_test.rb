require 'test_helper'

class WcoursesControllerTest < ActionController::TestCase
  setup do
    @wcourse = wcourses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wcourses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wcourse" do
    assert_difference('Wcourse.count') do
      post :create, wcourse: @wcourse.attributes
    end

    assert_redirected_to wcourse_path(assigns(:wcourse))
  end

  test "should show wcourse" do
    get :show, id: @wcourse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wcourse
    assert_response :success
  end

  test "should update wcourse" do
    put :update, id: @wcourse, wcourse: @wcourse.attributes
    assert_redirected_to wcourse_path(assigns(:wcourse))
  end

  test "should destroy wcourse" do
    assert_difference('Wcourse.count', -1) do
      delete :destroy, id: @wcourse
    end

    assert_redirected_to wcourses_path
  end
end
