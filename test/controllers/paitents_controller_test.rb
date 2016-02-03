require 'test_helper'

class PaitentsControllerTest < ActionController::TestCase
  setup do
    @paitent = paitents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paitents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paitent" do
    assert_difference('Paitent.count') do
      post :create, paitent: { name: @paitent.name }
    end

    assert_redirected_to paitent_path(assigns(:paitent))
  end

  test "should show paitent" do
    get :show, id: @paitent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paitent
    assert_response :success
  end

  test "should update paitent" do
    patch :update, id: @paitent, paitent: { name: @paitent.name }
    assert_redirected_to paitent_path(assigns(:paitent))
  end

  test "should destroy paitent" do
    assert_difference('Paitent.count', -1) do
      delete :destroy, id: @paitent
    end

    assert_redirected_to paitents_path
  end
end
