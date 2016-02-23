require 'test_helper'

class NativeLanguagesControllerTest < ActionController::TestCase
  setup do
    @native_language = native_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:native_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create native_language" do
    assert_difference('NativeLanguage.count') do
      post :create, native_language: { name: @native_language.name }
    end

    assert_redirected_to native_language_path(assigns(:native_language))
  end

  test "should show native_language" do
    get :show, id: @native_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @native_language
    assert_response :success
  end

  test "should update native_language" do
    patch :update, id: @native_language, native_language: { name: @native_language.name }
    assert_redirected_to native_language_path(assigns(:native_language))
  end

  test "should destroy native_language" do
    assert_difference('NativeLanguage.count', -1) do
      delete :destroy, id: @native_language
    end

    assert_redirected_to native_languages_path
  end
end
