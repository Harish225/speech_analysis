json.array!(@native_languages) do |native_language|
  json.extract! native_language, :id, :name
  json.url native_language_url(native_language, format: :json)
end
