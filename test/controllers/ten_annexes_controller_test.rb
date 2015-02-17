require 'test_helper'

class TenAnnexesControllerTest < ActionController::TestCase
  setup do
    @ten_annex = ten_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ten_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ten_annex" do
    assert_difference('TenAnnex.count') do
      post :create, ten_annex: { escuelas_veterinarias_personas: @ten_annex.escuelas_veterinarias_personas, estados_municipios_personas: @ten_annex.estados_municipios_personas, grupos_comunidad_personas: @ten_annex.grupos_comunidad_personas, imss_prospera_personas: @ten_annex.imss_prospera_personas, jurisdiction_id: @ten_annex.jurisdiction_id, otros_personas: @ten_annex.otros_personas, sagarpa_personas: @ten_annex.sagarpa_personas, sedena_semar: @ten_annex.sedena_semar, sesa_personas: @ten_annex.sesa_personas, total_personas: @ten_annex.total_personas, voluntarios_personas: @ten_annex.voluntarios_personas }
    end

    assert_redirected_to ten_annex_path(assigns(:ten_annex))
  end

  test "should show ten_annex" do
    get :show, id: @ten_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ten_annex
    assert_response :success
  end

  test "should update ten_annex" do
    patch :update, id: @ten_annex, ten_annex: { escuelas_veterinarias_personas: @ten_annex.escuelas_veterinarias_personas, estados_municipios_personas: @ten_annex.estados_municipios_personas, grupos_comunidad_personas: @ten_annex.grupos_comunidad_personas, imss_prospera_personas: @ten_annex.imss_prospera_personas, jurisdiction_id: @ten_annex.jurisdiction_id, otros_personas: @ten_annex.otros_personas, sagarpa_personas: @ten_annex.sagarpa_personas, sedena_semar: @ten_annex.sedena_semar, sesa_personas: @ten_annex.sesa_personas, total_personas: @ten_annex.total_personas, voluntarios_personas: @ten_annex.voluntarios_personas }
    assert_redirected_to ten_annex_path(assigns(:ten_annex))
  end

  test "should destroy ten_annex" do
    assert_difference('TenAnnex.count', -1) do
      delete :destroy, id: @ten_annex
    end

    assert_redirected_to ten_annexes_path
  end
end
