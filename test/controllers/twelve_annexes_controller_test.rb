require 'test_helper'

class TwelveAnnexesControllerTest < ActionController::TestCase
  setup do
    @twelve_annex = twelve_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twelve_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twelve_annex" do
    assert_difference('TwelveAnnex.count') do
      post :create, twelve_annex: { carteles: @twelve_annex.carteles, cunas_periodisticas: @twelve_annex.cunas_periodisticas, difusion_acumulado_total: @twelve_annex.difusion_acumulado_total, entrevistas_radio: @twelve_annex.entrevistas_radio, entrevistas_tv: @twelve_annex.entrevistas_tv, folletos: @twelve_annex.folletos, horas_perifoneo: @twelve_annex.horas_perifoneo, jurisdiction_id: @twelve_annex.jurisdiction_id, mantas: @twelve_annex.mantas, pinta_bardas: @twelve_annex.pinta_bardas, platicas: @twelve_annex.platicas, spots_radio: @twelve_annex.spots_radio, spots_tv: @twelve_annex.spots_tv, tripticos: @twelve_annex.tripticos, volantes: @twelve_annex.volantes }
    end

    assert_redirected_to twelve_annex_path(assigns(:twelve_annex))
  end

  test "should show twelve_annex" do
    get :show, id: @twelve_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twelve_annex
    assert_response :success
  end

  test "should update twelve_annex" do
    patch :update, id: @twelve_annex, twelve_annex: { carteles: @twelve_annex.carteles, cunas_periodisticas: @twelve_annex.cunas_periodisticas, difusion_acumulado_total: @twelve_annex.difusion_acumulado_total, entrevistas_radio: @twelve_annex.entrevistas_radio, entrevistas_tv: @twelve_annex.entrevistas_tv, folletos: @twelve_annex.folletos, horas_perifoneo: @twelve_annex.horas_perifoneo, jurisdiction_id: @twelve_annex.jurisdiction_id, mantas: @twelve_annex.mantas, pinta_bardas: @twelve_annex.pinta_bardas, platicas: @twelve_annex.platicas, spots_radio: @twelve_annex.spots_radio, spots_tv: @twelve_annex.spots_tv, tripticos: @twelve_annex.tripticos, volantes: @twelve_annex.volantes }
    assert_redirected_to twelve_annex_path(assigns(:twelve_annex))
  end

  test "should destroy twelve_annex" do
    assert_difference('TwelveAnnex.count', -1) do
      delete :destroy, id: @twelve_annex
    end

    assert_redirected_to twelve_annexes_path
  end
end
