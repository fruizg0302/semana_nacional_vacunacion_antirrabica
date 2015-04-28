json.array!(@sterilizations) do |sterilization|
  json.extract! sterilization, :id, :municipality, :surgery_date, :species_id, :genre_id, :age_group_id, :vaccine, :establishment_id
  json.url sterilization_url(sterilization, format: :json)
end
