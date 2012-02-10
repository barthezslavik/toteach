require 'test_helper'

class WwordsControllerTest < ActionController::TestCase
  setup do
    @wword = wwords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wwords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wword" do
    assert_difference('Wword.count') do
      post :create, wword: @wword.attributes
    end

    assert_redirected_to wword_path(assigns(:wword))
  end

  test "should show wword" do
    get :show, id: @wword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wword
    assert_response :success
  end

  test "should update wword" do
    put :update, id: @wword, wword: @wword.attributes
    assert_redirected_to wword_path(assigns(:wword))
  end

  test "should destroy wword" do
    assert_difference('Wword.count', -1) do
      delete :destroy, id: @wword
    end

    assert_redirected_to wwords_path
  end
end
