json.array!(@speakers) do |speaker|
  json.extract! speaker, :id, :name, :city_id, :state_id, :country_id, :native_language_id, :other_languages, :age, :gender, :english_onset, :learning_method, :english_country_residence_id, :length_english_residence, :user_id
  json.url speaker_url(speaker, format: :json)
end
