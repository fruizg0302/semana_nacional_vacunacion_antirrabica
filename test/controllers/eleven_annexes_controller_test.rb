require 'test_helper'

class ElevenAnnexesControllerTest < ActionController::TestCase
  setup do
    @eleven_annex = eleven_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eleven_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eleven_annex" do
    assert_difference('ElevenAnnex.count') do
      post :create, eleven_annex: { agujas: @eleven_annex.agujas, chinchos: @eleven_annex.chinchos, comprobantes_cartillas: @eleven_annex.comprobantes_cartillas, jeringas: @eleven_annex.jeringas, jurisdiction_id: @eleven_annex.jurisdiction_id, numero_dosis: @eleven_annex.numero_dosis, numero_frascos: @eleven_annex.numero_frascos, placas: @eleven_annex.placas, thermos: @eleven_annex.thermos }
    end

    assert_redirected_to eleven_annex_path(assigns(:eleven_annex))
  end

  test "should show eleven_annex" do
    get :show, id: @eleven_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eleven_annex
    assert_response :success
  end

  test "should update eleven_annex" do
    patch :update, id: @eleven_annex, eleven_annex: { agujas: @eleven_annex.agujas, chinchos: @eleven_annex.chinchos, comprobantes_cartillas: @eleven_annex.comprobantes_cartillas, jeringas: @eleven_annex.jeringas, jurisdiction_id: @eleven_annex.jurisdiction_id, numero_dosis: @eleven_annex.numero_dosis, numero_frascos: @eleven_annex.numero_frascos, placas: @eleven_annex.placas, thermos: @eleven_annex.thermos }
    assert_redirected_to eleven_annex_path(assigns(:eleven_annex))
  end

  test "should destroy eleven_annex" do
    assert_difference('ElevenAnnex.count', -1) do
      delete :destroy, id: @eleven_annex
    end

    assert_redirected_to eleven_annexes_path
  end
end
