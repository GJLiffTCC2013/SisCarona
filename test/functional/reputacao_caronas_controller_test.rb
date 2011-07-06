require 'test_helper'

class ReputacaoCaronasControllerTest < ActionController::TestCase
  setup do
    @reputacao_carona = reputacao_caronas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reputacao_caronas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reputacao_carona" do
    assert_difference('ReputacaoCarona.count') do
      post :create, :reputacao_carona => @reputacao_carona.attributes
    end

    assert_redirected_to reputacao_carona_path(assigns(:reputacao_carona))
  end

  test "should show reputacao_carona" do
    get :show, :id => @reputacao_carona.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reputacao_carona.to_param
    assert_response :success
  end

  test "should update reputacao_carona" do
    put :update, :id => @reputacao_carona.to_param, :reputacao_carona => @reputacao_carona.attributes
    assert_redirected_to reputacao_carona_path(assigns(:reputacao_carona))
  end

  test "should destroy reputacao_carona" do
    assert_difference('ReputacaoCarona.count', -1) do
      delete :destroy, :id => @reputacao_carona.to_param
    end

    assert_redirected_to reputacao_caronas_path
  end
end
