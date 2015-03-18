require 'test_helper'

class FifteenAnnexesControllerTest < ActionController::TestCase
  setup do
    @fifteen_annex = fifteen_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fifteen_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fifteen_annex" do
    assert_difference('FifteenAnnex.count') do
      post :create, fifteen_annex: { jurisdiction_id: @fifteen_annex.jurisdiction_id, localidades_trabajadas: @fifteen_annex.localidades_trabajadas, logros_gatos: @fifteen_annex.logros_gatos, logros_perros: @fifteen_annex.logros_perros, logros_total: @fifteen_annex.logros_total, numero_municipios: @fifteen_annex.numero_municipios }
    end

    assert_redirected_to fifteen_annex_path(assigns(:fifteen_annex))
  end

  test "should show fifteen_annex" do
    get :show, id: @fifteen_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fifteen_annex
    assert_response :success
  end

  test "should update fifteen_annex" do
    patch :update, id: @fifteen_annex, fifteen_annex: { jurisdiction_id: @fifteen_annex.jurisdiction_id, localidades_trabajadas: @fifteen_annex.localidades_trabajadas, logros_gatos: @fifteen_annex.logros_gatos, logros_perros: @fifteen_annex.logros_perros, logros_total: @fifteen_annex.logros_total, numero_municipios: @fifteen_annex.numero_municipios }
    assert_redirected_to fifteen_annex_path(assigns(:fifteen_annex))
  end

  test "should destroy fifteen_annex" do
    assert_difference('FifteenAnnex.count', -1) do
      delete :destroy, id: @fifteen_annex
    end

    assert_redirected_to fifteen_annexes_path
  end
end
