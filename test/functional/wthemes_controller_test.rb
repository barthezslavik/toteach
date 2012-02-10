require 'test_helper'

class WthemesControllerTest < ActionController::TestCase
  setup do
    @wtheme = wthemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wthemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wtheme" do
    assert_difference('Wtheme.count') do
      post :create, wtheme: @wtheme.attributes
    end

    assert_redirected_to wtheme_path(assigns(:wtheme))
  end

  test "should show wtheme" do
    get :show, id: @wtheme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wtheme
    assert_response :success
  end

  test "should update wtheme" do
    put :update, id: @wtheme, wtheme: @wtheme.attributes
    assert_redirected_to wtheme_path(assigns(:wtheme))
  end

  test "should destroy wtheme" do
    assert_difference('Wtheme.count', -1) do
      delete :destroy, id: @wtheme
    end

    assert_redirected_to wthemes_path
  end
end
