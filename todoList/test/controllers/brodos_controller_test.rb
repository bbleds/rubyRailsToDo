require 'test_helper'

class BrodosControllerTest < ActionController::TestCase
  setup do
    @brodo = brodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brodo" do
    assert_difference('Brodo.count') do
      post :create, brodo: { description: @brodo.description, title: @brodo.title }
    end

    assert_redirected_to brodo_path(assigns(:brodo))
  end

  test "should show brodo" do
    get :show, id: @brodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brodo
    assert_response :success
  end

  test "should update brodo" do
    patch :update, id: @brodo, brodo: { description: @brodo.description, title: @brodo.title }
    assert_redirected_to brodo_path(assigns(:brodo))
  end

  test "should destroy brodo" do
    assert_difference('Brodo.count', -1) do
      delete :destroy, id: @brodo
    end

    assert_redirected_to brodos_path
  end
end
