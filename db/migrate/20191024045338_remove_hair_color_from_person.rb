class RemoveHairColorFromPerson < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :hair_color, :string
  end
end
