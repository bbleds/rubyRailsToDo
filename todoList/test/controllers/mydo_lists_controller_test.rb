require 'test_helper'

class MydoListsControllerTest < ActionController::TestCase
  setup do
    @mydo_list = mydo_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mydo_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mydo_list" do
    assert_difference('MydoList.count') do
      post :create, mydo_list: { description: @mydo_list.description, title: @mydo_list.title }
    end

    assert_redirected_to mydo_list_path(assigns(:mydo_list))
  end

  test "should show mydo_list" do
    get :show, id: @mydo_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mydo_list
    assert_response :success
  end

  test "should update mydo_list" do
    patch :update, id: @mydo_list, mydo_list: { description: @mydo_list.description, title: @mydo_list.title }
    assert_redirected_to mydo_list_path(assigns(:mydo_list))
  end

  test "should destroy mydo_list" do
    assert_difference('MydoList.count', -1) do
      delete :destroy, id: @mydo_list
    end

    assert_redirected_to mydo_lists_path
  end
end
