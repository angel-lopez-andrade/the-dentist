class CreateInterestsPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :interests_people do |t|
      t.references :person, foreign_key: true
      t.references :interest, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
