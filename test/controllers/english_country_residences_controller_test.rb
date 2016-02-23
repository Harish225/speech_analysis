require 'test_helper'

class EnglishCountryResidencesControllerTest < ActionController::TestCase
  setup do
    @english_country_residence = english_country_residences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:english_country_residences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create english_country_residence" do
    assert_difference('EnglishCountryResidence.count') do
      post :create, english_country_residence: { name: @english_country_residence.name }
    end

    assert_redirected_to english_country_residence_path(assigns(:english_country_residence))
  end

  test "should show english_country_residence" do
    get :show, id: @english_country_residence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @english_country_residence
    assert_response :success
  end

  test "should update english_country_residence" do
    patch :update, id: @english_country_residence, english_country_residence: { name: @english_country_residence.name }
    assert_redirected_to english_country_residence_path(assigns(:english_country_residence))
  end

  test "should destroy english_country_residence" do
    assert_difference('EnglishCountryResidence.count', -1) do
      delete :destroy, id: @english_country_residence
    end

    assert_redirected_to english_country_residences_path
  end
end
