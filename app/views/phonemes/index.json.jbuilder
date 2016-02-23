json.array!(@phonemes) do |phoneme|
  json.extract! phoneme, :id, :base, :actual, :diacritic, :sequence, :speaker_id
  json.url phoneme_url(phoneme, format: :json)
end
