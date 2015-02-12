require 'test_helper'

class EightAnnexesControllerTest < ActionController::TestCase
  setup do
    @eight_annex = eight_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eight_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eight_annex" do
    assert_difference('EightAnnex.count') do
      post :create, eight_annex: { brigadas_dia: @eight_annex.brigadas_dia, gatos_estimados: @eight_annex.gatos_estimados, gatos_por_vacunar: @eight_annex.gatos_por_vacunar, gatos_vsn: @eight_annex.gatos_vsn, jurisdiction_id: @eight_annex.jurisdiction_id, numero_de_dias: @eight_annex.numero_de_dias, perros_estimados: @eight_annex.perros_estimados, perros_por_vacunar: @eight_annex.perros_por_vacunar, perros_vsn: @eight_annex.perros_vsn, puestos_fijos: @eight_annex.puestos_fijos, total_estimados: @eight_annex.total_estimados, total_por_vacunar: @eight_annex.total_por_vacunar, total_vsn: @eight_annex.total_vsn }
    end

    assert_redirected_to eight_annex_path(assigns(:eight_annex))
  end

  test "should show eight_annex" do
    get :show, id: @eight_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eight_annex
    assert_response :success
  end

  test "should update eight_annex" do
    patch :update, id: @eight_annex, eight_annex: { brigadas_dia: @eight_annex.brigadas_dia, gatos_estimados: @eight_annex.gatos_estimados, gatos_por_vacunar: @eight_annex.gatos_por_vacunar, gatos_vsn: @eight_annex.gatos_vsn, jurisdiction_id: @eight_annex.jurisdiction_id, numero_de_dias: @eight_annex.numero_de_dias, perros_estimados: @eight_annex.perros_estimados, perros_por_vacunar: @eight_annex.perros_por_vacunar, perros_vsn: @eight_annex.perros_vsn, puestos_fijos: @eight_annex.puestos_fijos, total_estimados: @eight_annex.total_estimados, total_por_vacunar: @eight_annex.total_por_vacunar, total_vsn: @eight_annex.total_vsn }
    assert_redirected_to eight_annex_path(assigns(:eight_annex))
  end

  test "should destroy eight_annex" do
    assert_difference('EightAnnex.count', -1) do
      delete :destroy, id: @eight_annex
    end

    assert_redirected_to eight_annexes_path
  end
end
