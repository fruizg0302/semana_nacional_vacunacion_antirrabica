require 'test_helper'

class SixteenAnnexesControllerTest < ActionController::TestCase
  setup do
    @sixteen_annex = sixteen_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sixteen_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sixteen_annex" do
    assert_difference('SixteenAnnex.count') do
      post :create, sixteen_annex: { cunas_periodisticas: @sixteen_annex.cunas_periodisticas, hrs_perifoneo: @sixteen_annex.hrs_perifoneo, jurisdiction_id: @sixteen_annex.jurisdiction_id, mantas: @sixteen_annex.mantas, numero_carteles: @sixteen_annex.numero_carteles, numero_entrevistas: @sixteen_annex.numero_entrevistas, numero_folletos: @sixteen_annex.numero_folletos, numero_platicas: @sixteen_annex.numero_platicas, numero_tripticos: @sixteen_annex.numero_tripticos, numero_volantes: @sixteen_annex.numero_volantes, pinta_bardas: @sixteen_annex.pinta_bardas, spots_radio: @sixteen_annex.spots_radio, spots_tv: @sixteen_annex.spots_tv }
    end

    assert_redirected_to sixteen_annex_path(assigns(:sixteen_annex))
  end

  test "should show sixteen_annex" do
    get :show, id: @sixteen_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sixteen_annex
    assert_response :success
  end

  test "should update sixteen_annex" do
    patch :update, id: @sixteen_annex, sixteen_annex: { cunas_periodisticas: @sixteen_annex.cunas_periodisticas, hrs_perifoneo: @sixteen_annex.hrs_perifoneo, jurisdiction_id: @sixteen_annex.jurisdiction_id, mantas: @sixteen_annex.mantas, numero_carteles: @sixteen_annex.numero_carteles, numero_entrevistas: @sixteen_annex.numero_entrevistas, numero_folletos: @sixteen_annex.numero_folletos, numero_platicas: @sixteen_annex.numero_platicas, numero_tripticos: @sixteen_annex.numero_tripticos, numero_volantes: @sixteen_annex.numero_volantes, pinta_bardas: @sixteen_annex.pinta_bardas, spots_radio: @sixteen_annex.spots_radio, spots_tv: @sixteen_annex.spots_tv }
    assert_redirected_to sixteen_annex_path(assigns(:sixteen_annex))
  end

  test "should destroy sixteen_annex" do
    assert_difference('SixteenAnnex.count', -1) do
      delete :destroy, id: @sixteen_annex
    end

    assert_redirected_to sixteen_annexes_path
  end
end
