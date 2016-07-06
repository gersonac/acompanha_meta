require 'test_helper'

class PlanilhasControllerTest < ActionController::TestCase
  setup do
    @planilha = planilhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planilhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planilha" do
    assert_difference('Planilha.count') do
      post :create, planilha: { user_id: @planilha.user_id }
    end

    assert_redirected_to planilha_path(assigns(:planilha))
  end

  test "should show planilha" do
    get :show, id: @planilha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planilha
    assert_response :success
  end

  test "should update planilha" do
    patch :update, id: @planilha, planilha: { user_id: @planilha.user_id }
    assert_redirected_to planilha_path(assigns(:planilha))
  end

  test "should destroy planilha" do
    assert_difference('Planilha.count', -1) do
      delete :destroy, id: @planilha
    end

    assert_redirected_to planilhas_path
  end
end
