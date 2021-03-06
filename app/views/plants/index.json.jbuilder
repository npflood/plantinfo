json.array!(@plants) do |plant|
  json.extract! plant, :id, :english_common_name, :other_common_names, :latin_name, :family_names, :description, :origin, :uses, :cultivation, :harvesting_and_seed_production, :pests_and_diseases, :cooking_and_nutrition, :varieties, :categories, :created_at, :updated_at
  json.url plant_url(plant, format: :json)
end
