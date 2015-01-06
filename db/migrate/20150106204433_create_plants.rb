class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :english_common_name
      t.string :other_common_names
      t.string :latin_name
      t.string :family_names
      t.text :description
      t.text :origin
      t.text :uses
      t.text :cultivation
      t.text :harvesting_and_seed_production
      t.text :pests_and_diseases
      t.text :cooking_and_nutrition

      t.timestamps null: false
    end
  end
end
