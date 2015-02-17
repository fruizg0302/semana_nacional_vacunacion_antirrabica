require 'test_helper'

class NineAnnexesControllerTest < ActionController::TestCase
  setup do
    @nine_annex = nine_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nine_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nine_annex" do
    assert_difference('NineAnnex.count') do
      post :create, nine_annex: { gatos_vacunar_imss_prospera: @nine_annex.gatos_vacunar_imss_prospera, jurisdiction_id: @nine_annex.jurisdiction_id, numero_municipios: @nine_annex.numero_municipios, numero_municipios_imss_prospera: @nine_annex.numero_municipios_imss_prospera, perros_vacunar_imss_prospera: @nine_annex.perros_vacunar_imss_prospera, total_vacunar_imss_prospera: @nine_annex.total_vacunar_imss_prospera, universo_gatos_imss_prospera: @nine_annex.universo_gatos_imss_prospera, universo_perros_imss_prospera: @nine_annex.universo_perros_imss_prospera, universo_total_imss_prospera: @nine_annex.universo_total_imss_prospera }
    end

    assert_redirected_to nine_annex_path(assigns(:nine_annex))
  end

  test "should show nine_annex" do
    get :show, id: @nine_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nine_annex
    assert_response :success
  end

  test "should update nine_annex" do
    patch :update, id: @nine_annex, nine_annex: { gatos_vacunar_imss_prospera: @nine_annex.gatos_vacunar_imss_prospera, jurisdiction_id: @nine_annex.jurisdiction_id, numero_municipios: @nine_annex.numero_municipios, numero_municipios_imss_prospera: @nine_annex.numero_municipios_imss_prospera, perros_vacunar_imss_prospera: @nine_annex.perros_vacunar_imss_prospera, total_vacunar_imss_prospera: @nine_annex.total_vacunar_imss_prospera, universo_gatos_imss_prospera: @nine_annex.universo_gatos_imss_prospera, universo_perros_imss_prospera: @nine_annex.universo_perros_imss_prospera, universo_total_imss_prospera: @nine_annex.universo_total_imss_prospera }
    assert_redirected_to nine_annex_path(assigns(:nine_annex))
  end

  test "should destroy nine_annex" do
    assert_difference('NineAnnex.count', -1) do
      delete :destroy, id: @nine_annex
    end

    assert_redirected_to nine_annexes_path
  end
end
