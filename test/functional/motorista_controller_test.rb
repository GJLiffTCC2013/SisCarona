require 'test_helper'

class MotoristaControllerTest < ActionController::TestCase
  setup do
    @motoristum = motorista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motorista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motoristum" do
    assert_difference('Motoristum.count') do
      post :create, :motoristum => @motoristum.attributes
    end

    assert_redirected_to motoristum_path(assigns(:motoristum))
  end

  test "should show motoristum" do
    get :show, :id => @motoristum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @motoristum.to_param
    assert_response :success
  end

  test "should update motoristum" do
    put :update, :id => @motoristum.to_param, :motoristum => @motoristum.attributes
    assert_redirected_to motoristum_path(assigns(:motoristum))
  end

  test "should destroy motoristum" do
    assert_difference('Motoristum.count', -1) do
      delete :destroy, :id => @motoristum.to_param
    end

    assert_redirected_to motorista_path
  end
end
