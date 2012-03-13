require 'test_helper'

class CartPosControllerTest < ActionController::TestCase
  setup do
    @cart_po = cart_pos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_pos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_po" do
    assert_difference('CartPo.count') do
      post :create, :cart_po => @cart_po.attributes
    end

    assert_redirected_to cart_po_path(assigns(:cart_po))
  end

  test "should show cart_po" do
    get :show, :id => @cart_po
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cart_po
    assert_response :success
  end

  test "should update cart_po" do
    put :update, :id => @cart_po, :cart_po => @cart_po.attributes
    assert_redirected_to cart_po_path(assigns(:cart_po))
  end

  test "should destroy cart_po" do
    assert_difference('CartPo.count', -1) do
      delete :destroy, :id => @cart_po
    end

    assert_redirected_to cart_pos_path
  end
end
