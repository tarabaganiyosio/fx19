require 'test_helper'

class BasControllerTest < ActionController::TestCase
  setup do
    @ba = bas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ba" do
    assert_difference('Ba.count') do
      post :create, ba: { body: @ba.body, question_id: @ba.question_id, user_id: @ba.user_id }
    end

    assert_redirected_to ba_path(assigns(:ba))
  end

  test "should show ba" do
    get :show, id: @ba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ba
    assert_response :success
  end

  test "should update ba" do
    patch :update, id: @ba, ba: { body: @ba.body, question_id: @ba.question_id, user_id: @ba.user_id }
    assert_redirected_to ba_path(assigns(:ba))
  end

  test "should destroy ba" do
    assert_difference('Ba.count', -1) do
      delete :destroy, id: @ba
    end

    assert_redirected_to bas_path
  end
end
