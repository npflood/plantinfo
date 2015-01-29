class AddCategoriesToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :categories, :string
  end
end
