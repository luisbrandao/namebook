require 'test_helper'

class OrbTypesControllerTest < ActionController::TestCase
  setup do
    @orb_type = orb_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orb_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orb_type" do
    assert_difference('OrbType.count') do
      post :create, orb_type: { nome: @orb_type.nome }
    end

    assert_redirected_to orb_type_path(assigns(:orb_type))
  end

  test "should show orb_type" do
    get :show, id: @orb_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orb_type
    assert_response :success
  end

  test "should update orb_type" do
    put :update, id: @orb_type, orb_type: { nome: @orb_type.nome }
    assert_redirected_to orb_type_path(assigns(:orb_type))
  end

  test "should destroy orb_type" do
    assert_difference('OrbType.count', -1) do
      delete :destroy, id: @orb_type
    end

    assert_redirected_to orb_types_path
  end
end
