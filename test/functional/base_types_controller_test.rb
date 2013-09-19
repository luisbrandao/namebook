require 'test_helper'

class BaseTypesControllerTest < ActionController::TestCase
  setup do
    @base_type = base_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_type" do
    assert_difference('BaseType.count') do
      post :create, base_type: { nome: @base_type.nome }
    end

    assert_redirected_to base_type_path(assigns(:base_type))
  end

  test "should show base_type" do
    get :show, id: @base_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_type
    assert_response :success
  end

  test "should update base_type" do
    put :update, id: @base_type, base_type: { nome: @base_type.nome }
    assert_redirected_to base_type_path(assigns(:base_type))
  end

  test "should destroy base_type" do
    assert_difference('BaseType.count', -1) do
      delete :destroy, id: @base_type
    end

    assert_redirected_to base_types_path
  end
end
