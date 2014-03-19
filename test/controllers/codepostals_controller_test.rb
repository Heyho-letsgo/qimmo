require 'test_helper'

class CodepostalsControllerTest < ActionController::TestCase
  setup do
    @codepostal = codepostals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:codepostals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create codepostal" do
    assert_difference('Codepostal.count') do
      post :create, codepostal: { code: @codepostal.code }
    end

    assert_redirected_to codepostal_path(assigns(:codepostal))
  end

  test "should show codepostal" do
    get :show, id: @codepostal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @codepostal
    assert_response :success
  end

  test "should update codepostal" do
    patch :update, id: @codepostal, codepostal: { code: @codepostal.code }
    assert_redirected_to codepostal_path(assigns(:codepostal))
  end

  test "should destroy codepostal" do
    assert_difference('Codepostal.count', -1) do
      delete :destroy, id: @codepostal
    end

    assert_redirected_to codepostals_path
  end
end
