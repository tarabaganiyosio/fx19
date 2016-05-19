require 'test_helper'

class EvasControllerTest < ActionController::TestCase
  setup do
    @eva = evas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eva" do
    assert_difference('Eva.count') do
      post :create, eva: { body: @eva.body, broker_id: @eva.broker_id, title: @eva.title, user_id: @eva.user_id }
    end

    assert_redirected_to eva_path(assigns(:eva))
  end

  test "should show eva" do
    get :show, id: @eva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eva
    assert_response :success
  end

  test "should update eva" do
    patch :update, id: @eva, eva: { body: @eva.body, broker_id: @eva.broker_id, title: @eva.title, user_id: @eva.user_id }
    assert_redirected_to eva_path(assigns(:eva))
  end

  test "should destroy eva" do
    assert_difference('Eva.count', -1) do
      delete :destroy, id: @eva
    end

    assert_redirected_to evas_path
  end
end
