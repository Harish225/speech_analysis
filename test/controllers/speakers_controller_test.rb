require 'test_helper'

class SpeakersControllerTest < ActionController::TestCase
  setup do
    @speaker = speakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:speakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speaker" do
    assert_difference('Speaker.count') do
      post :create, speaker: { age: @speaker.age, city_id: @speaker.city_id, country_id: @speaker.country_id, english_country_residence_id: @speaker.english_country_residence_id, english_onset: @speaker.english_onset, gender: @speaker.gender, learning_method: @speaker.learning_method, length_english_residence: @speaker.length_english_residence, name: @speaker.name, native_language_id: @speaker.native_language_id, other_languages: @speaker.other_languages, state_id: @speaker.state_id, user_id: @speaker.user_id }
    end

    assert_redirected_to speaker_path(assigns(:speaker))
  end

  test "should show speaker" do
    get :show, id: @speaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speaker
    assert_response :success
  end

  test "should update speaker" do
    patch :update, id: @speaker, speaker: { age: @speaker.age, city_id: @speaker.city_id, country_id: @speaker.country_id, english_country_residence_id: @speaker.english_country_residence_id, english_onset: @speaker.english_onset, gender: @speaker.gender, learning_method: @speaker.learning_method, length_english_residence: @speaker.length_english_residence, name: @speaker.name, native_language_id: @speaker.native_language_id, other_languages: @speaker.other_languages, state_id: @speaker.state_id, user_id: @speaker.user_id }
    assert_redirected_to speaker_path(assigns(:speaker))
  end

  test "should destroy speaker" do
    assert_difference('Speaker.count', -1) do
      delete :destroy, id: @speaker
    end

    assert_redirected_to speakers_path
  end
end
