require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stores)
  end

  test "should create store" do
    assert_difference('Store.count') do
      post :create, store: { address: @store.address, latitude: @store.latitude, longitude: @store.longitude, name: @store.name, phone: @store.phone }
    end

    assert_response 201
  end

  test "should show store" do
    get :show, id: @store
    assert_response :success
  end

  test "should update store" do
    put :update, id: @store, store: { address: @store.address, latitude: @store.latitude, longitude: @store.longitude, name: @store.name, phone: @store.phone }
    assert_response 204
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete :destroy, id: @store
    end

    assert_response 204
  end
end
