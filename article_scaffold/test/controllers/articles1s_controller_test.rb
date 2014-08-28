require 'test_helper'

class Articles1sControllerTest < ActionController::TestCase
  setup do
    @articles1 = articles1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articles1" do
    assert_difference('Articles1.count') do
      post :create, articles1: { body: @articles1.body, title: @articles1.title }
    end

    assert_redirected_to articles1_path(assigns(:articles1))
  end

  test "should show articles1" do
    get :show, id: @articles1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articles1
    assert_response :success
  end

  test "should update articles1" do
    patch :update, id: @articles1, articles1: { body: @articles1.body, title: @articles1.title }
    assert_redirected_to articles1_path(assigns(:articles1))
  end

  test "should destroy articles1" do
    assert_difference('Articles1.count', -1) do
      delete :destroy, id: @articles1
    end

    assert_redirected_to articles1s_path
  end
end
