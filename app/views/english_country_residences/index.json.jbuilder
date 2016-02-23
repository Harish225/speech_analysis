json.array!(@english_country_residences) do |english_country_residence|
  json.extract! english_country_residence, :id, :name
  json.url english_country_residence_url(english_country_residence, format: :json)
end
