class AddNumberToTeeth < ActiveRecord::Migration[5.2]
  def change
    add_column :teeths, :number, :integer
  end
end
