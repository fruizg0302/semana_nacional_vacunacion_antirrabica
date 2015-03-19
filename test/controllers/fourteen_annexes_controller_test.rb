require 'test_helper'

class FourteenAnnexesControllerTest < ActionController::TestCase
  setup do
    @fourteen_annex = fourteen_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fourteen_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fourteen_annex" do
    assert_difference('FourteenAnnex.count') do
      post :create, fourteen_annex: { brigadas: @fourteen_annex.brigadas, localidades_trabajadas: @fourteen_annex.localidades_trabajadas, logros_gatos: @fourteen_annex.logros_gatos, logros_perros: @fourteen_annex.logros_perros, logros_total: @fourteen_annex.logros_total, numero_municipios: @fourteen_annex.numero_municipios, personas_edo_mpio: @fourteen_annex.personas_edo_mpio, personas_escuelas_vet_pec: @fourteen_annex.personas_escuelas_vet_pec, personas_gpos: @fourteen_annex.personas_gpos, personas_imss_prospera: @fourteen_annex.personas_imss_prospera, personas_sagarpa: @fourteen_annex.personas_sagarpa, personas_sesa: @fourteen_annex.personas_sesa, personas_total: @fourteen_annex.personas_total, personas_voluntarios: @fourteen_annex.personas_voluntarios, porcentaje_cumplimiento: @fourteen_annex.porcentaje_cumplimiento, puestos: @fourteen_annex.puestos }
    end

    assert_redirected_to fourteen_annex_path(assigns(:fourteen_annex))
  end

  test "should show fourteen_annex" do
    get :show, id: @fourteen_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fourteen_annex
    assert_response :success
  end

  test "should update fourteen_annex" do
    patch :update, id: @fourteen_annex, fourteen_annex: { brigadas: @fourteen_annex.brigadas, localidades_trabajadas: @fourteen_annex.localidades_trabajadas, logros_gatos: @fourteen_annex.logros_gatos, logros_perros: @fourteen_annex.logros_perros, logros_total: @fourteen_annex.logros_total, numero_municipios: @fourteen_annex.numero_municipios, personas_edo_mpio: @fourteen_annex.personas_edo_mpio, personas_escuelas_vet_pec: @fourteen_annex.personas_escuelas_vet_pec, personas_gpos: @fourteen_annex.personas_gpos, personas_imss_prospera: @fourteen_annex.personas_imss_prospera, personas_sagarpa: @fourteen_annex.personas_sagarpa, personas_sesa: @fourteen_annex.personas_sesa, personas_total: @fourteen_annex.personas_total, personas_voluntarios: @fourteen_annex.personas_voluntarios, porcentaje_cumplimiento: @fourteen_annex.porcentaje_cumplimiento, puestos: @fourteen_annex.puestos }
    assert_redirected_to fourteen_annex_path(assigns(:fourteen_annex))
  end

  test "should destroy fourteen_annex" do
    assert_difference('FourteenAnnex.count', -1) do
      delete :destroy, id: @fourteen_annex
    end

    assert_redirected_to fourteen_annexes_path
  end
end
