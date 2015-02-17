require 'test_helper'

class ThirteenAnnexesControllerTest < ActionController::TestCase
  setup do
    @thirteen_annex = thirteen_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirteen_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirteen_annex" do
    assert_difference('ThirteenAnnex.count') do
      post :create, thirteen_annex: { equipo_perifoneo_oficial: @thirteen_annex.equipo_perifoneo_oficial, equipo_perifoneo_privado: @thirteen_annex.equipo_perifoneo_privado, equipo_perifoneo_total: @thirteen_annex.equipo_perifoneo_total, fecha_inicio_difusion: @thirteen_annex.fecha_inicio_difusion, fecha_inicio_difusion_perifoneo_local: @thirteen_annex.fecha_inicio_difusion_perifoneo_local, fecha_termino_difusion: @thirteen_annex.fecha_termino_difusion, fecha_termino_difusion_perifoneo_local: @thirteen_annex.fecha_termino_difusion_perifoneo_local, jurisdiction_id: @thirteen_annex.jurisdiction_id, numero_carteles_dist: @thirteen_annex.numero_carteles_dist, numero_carteles_local: @thirteen_annex.numero_carteles_local, numero_cd_perifoneo_dist: @thirteen_annex.numero_cd_perifoneo_dist, numero_cd_perifoneo_local: @thirteen_annex.numero_cd_perifoneo_local, numero_cds_dist: @thirteen_annex.numero_cds_dist, numero_cds_local: @thirteen_annex.numero_cds_local, numero_estaciones_am: @thirteen_annex.numero_estaciones_am, numero_estaciones_fm: @thirteen_annex.numero_estaciones_fm, promedio_dias_difusion: @thirteen_annex.promedio_dias_difusion, promedio_dias_perifoneo: @thirteen_annex.promedio_dias_perifoneo, promedio_horas_difusion: @thirteen_annex.promedio_horas_difusion, promedio_impactos_dia: @thirteen_annex.promedio_impactos_dia, total_estaciones: @thirteen_annex.total_estaciones }
    end

    assert_redirected_to thirteen_annex_path(assigns(:thirteen_annex))
  end

  test "should show thirteen_annex" do
    get :show, id: @thirteen_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirteen_annex
    assert_response :success
  end

  test "should update thirteen_annex" do
    patch :update, id: @thirteen_annex, thirteen_annex: { equipo_perifoneo_oficial: @thirteen_annex.equipo_perifoneo_oficial, equipo_perifoneo_privado: @thirteen_annex.equipo_perifoneo_privado, equipo_perifoneo_total: @thirteen_annex.equipo_perifoneo_total, fecha_inicio_difusion: @thirteen_annex.fecha_inicio_difusion, fecha_inicio_difusion_perifoneo_local: @thirteen_annex.fecha_inicio_difusion_perifoneo_local, fecha_termino_difusion: @thirteen_annex.fecha_termino_difusion, fecha_termino_difusion_perifoneo_local: @thirteen_annex.fecha_termino_difusion_perifoneo_local, jurisdiction_id: @thirteen_annex.jurisdiction_id, numero_carteles_dist: @thirteen_annex.numero_carteles_dist, numero_carteles_local: @thirteen_annex.numero_carteles_local, numero_cd_perifoneo_dist: @thirteen_annex.numero_cd_perifoneo_dist, numero_cd_perifoneo_local: @thirteen_annex.numero_cd_perifoneo_local, numero_cds_dist: @thirteen_annex.numero_cds_dist, numero_cds_local: @thirteen_annex.numero_cds_local, numero_estaciones_am: @thirteen_annex.numero_estaciones_am, numero_estaciones_fm: @thirteen_annex.numero_estaciones_fm, promedio_dias_difusion: @thirteen_annex.promedio_dias_difusion, promedio_dias_perifoneo: @thirteen_annex.promedio_dias_perifoneo, promedio_horas_difusion: @thirteen_annex.promedio_horas_difusion, promedio_impactos_dia: @thirteen_annex.promedio_impactos_dia, total_estaciones: @thirteen_annex.total_estaciones }
    assert_redirected_to thirteen_annex_path(assigns(:thirteen_annex))
  end

  test "should destroy thirteen_annex" do
    assert_difference('ThirteenAnnex.count', -1) do
      delete :destroy, id: @thirteen_annex
    end

    assert_redirected_to thirteen_annexes_path
  end
end
