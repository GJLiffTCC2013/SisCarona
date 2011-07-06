require 'test_helper'

class ReputacaoMotoristaControllerTest < ActionController::TestCase
  setup do
    @reputacao_motoristum = reputacao_motorista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reputacao_motorista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reputacao_motoristum" do
    assert_difference('ReputacaoMotoristum.count') do
      post :create, :reputacao_motoristum => @reputacao_motoristum.attributes
    end

    assert_redirected_to reputacao_motoristum_path(assigns(:reputacao_motoristum))
  end

  test "should show reputacao_motoristum" do
    get :show, :id => @reputacao_motoristum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reputacao_motoristum.to_param
    assert_response :success
  end

  test "should update reputacao_motoristum" do
    put :update, :id => @reputacao_motoristum.to_param, :reputacao_motoristum => @reputacao_motoristum.attributes
    assert_redirected_to reputacao_motoristum_path(assigns(:reputacao_motoristum))
  end

  test "should destroy reputacao_motoristum" do
    assert_difference('ReputacaoMotoristum.count', -1) do
      delete :destroy, :id => @reputacao_motoristum.to_param
    end

    assert_redirected_to reputacao_motorista_path
  end
end
