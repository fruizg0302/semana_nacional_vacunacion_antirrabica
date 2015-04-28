require 'test_helper'

class SterilizationsControllerTest < ActionController::TestCase
  setup do
    @sterilization = sterilizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sterilizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sterilization" do
    assert_difference('Sterilization.count') do
      post :create, sterilization: { age_group_id: @sterilization.age_group_id, establishment_id: @sterilization.establishment_id, genre_id: @sterilization.genre_id, municipality: @sterilization.municipality, species_id: @sterilization.species_id, surgery_date: @sterilization.surgery_date, vaccine: @sterilization.vaccine }
    end

    assert_redirected_to sterilization_path(assigns(:sterilization))
  end

  test "should show sterilization" do
    get :show, id: @sterilization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sterilization
    assert_response :success
  end

  test "should update sterilization" do
    patch :update, id: @sterilization, sterilization: { age_group_id: @sterilization.age_group_id, establishment_id: @sterilization.establishment_id, genre_id: @sterilization.genre_id, municipality: @sterilization.municipality, species_id: @sterilization.species_id, surgery_date: @sterilization.surgery_date, vaccine: @sterilization.vaccine }
    assert_redirected_to sterilization_path(assigns(:sterilization))
  end

  test "should destroy sterilization" do
    assert_difference('Sterilization.count', -1) do
      delete :destroy, id: @sterilization
    end

    assert_redirected_to sterilizations_path
  end
end
