class AddHairColorToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :hair_color, :integer
  end
end
