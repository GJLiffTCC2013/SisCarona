require 'test_helper'

class ReputacaoVeiculosControllerTest < ActionController::TestCase
  setup do
    @reputacao_veiculo = reputacao_veiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reputacao_veiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reputacao_veiculo" do
    assert_difference('ReputacaoVeiculo.count') do
      post :create, :reputacao_veiculo => @reputacao_veiculo.attributes
    end

    assert_redirected_to reputacao_veiculo_path(assigns(:reputacao_veiculo))
  end

  test "should show reputacao_veiculo" do
    get :show, :id => @reputacao_veiculo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reputacao_veiculo.to_param
    assert_response :success
  end

  test "should update reputacao_veiculo" do
    put :update, :id => @reputacao_veiculo.to_param, :reputacao_veiculo => @reputacao_veiculo.attributes
    assert_redirected_to reputacao_veiculo_path(assigns(:reputacao_veiculo))
  end

  test "should destroy reputacao_veiculo" do
    assert_difference('ReputacaoVeiculo.count', -1) do
      delete :destroy, :id => @reputacao_veiculo.to_param
    end

    assert_redirected_to reputacao_veiculos_path
  end
end
