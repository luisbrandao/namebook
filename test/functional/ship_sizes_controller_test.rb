require 'test_helper'

class ShipSizesControllerTest < ActionController::TestCase
  setup do
    @ship_size = ship_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ship_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ship_size" do
    assert_difference('ShipSize.count') do
      post :create, ship_size: { nome: @ship_size.nome }
    end

    assert_redirected_to ship_size_path(assigns(:ship_size))
  end

  test "should show ship_size" do
    get :show, id: @ship_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ship_size
    assert_response :success
  end

  test "should update ship_size" do
    put :update, id: @ship_size, ship_size: { nome: @ship_size.nome }
    assert_redirected_to ship_size_path(assigns(:ship_size))
  end

  test "should destroy ship_size" do
    assert_difference('ShipSize.count', -1) do
      delete :destroy, id: @ship_size
    end

    assert_redirected_to ship_sizes_path
  end
end
