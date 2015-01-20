class AddVarietiesToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :varieties, :text
  end
end
