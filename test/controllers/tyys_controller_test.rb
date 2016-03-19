require 'test_helper'

class TyysControllerTest < ActionController::TestCase
  setup do
    @tyy = tyys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tyys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tyy" do
    assert_difference('Tyy.count') do
      post :create, tyy: { ewqw: @tyy.ewqw, try: @tyy.try }
    end

    assert_redirected_to tyy_path(assigns(:tyy))
  end

  test "should show tyy" do
    get :show, id: @tyy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tyy
    assert_response :success
  end

  test "should update tyy" do
    patch :update, id: @tyy, tyy: { ewqw: @tyy.ewqw, try: @tyy.try }
    assert_redirected_to tyy_path(assigns(:tyy))
  end

  test "should destroy tyy" do
    assert_difference('Tyy.count', -1) do
      delete :destroy, id: @tyy
    end

    assert_redirected_to tyys_path
  end
end
