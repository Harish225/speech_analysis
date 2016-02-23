require 'test_helper'

class PhonemesControllerTest < ActionController::TestCase
  setup do
    @phoneme = phonemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phonemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phoneme" do
    assert_difference('Phoneme.count') do
      post :create, phoneme: { actual: @phoneme.actual, base: @phoneme.base, diacritic: @phoneme.diacritic, sequence: @phoneme.sequence, speaker_id: @phoneme.speaker_id }
    end

    assert_redirected_to phoneme_path(assigns(:phoneme))
  end

  test "should show phoneme" do
    get :show, id: @phoneme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phoneme
    assert_response :success
  end

  test "should update phoneme" do
    patch :update, id: @phoneme, phoneme: { actual: @phoneme.actual, base: @phoneme.base, diacritic: @phoneme.diacritic, sequence: @phoneme.sequence, speaker_id: @phoneme.speaker_id }
    assert_redirected_to phoneme_path(assigns(:phoneme))
  end

  test "should destroy phoneme" do
    assert_difference('Phoneme.count', -1) do
      delete :destroy, id: @phoneme
    end

    assert_redirected_to phonemes_path
  end
end
