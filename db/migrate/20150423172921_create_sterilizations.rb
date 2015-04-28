class CreateSterilizations < ActiveRecord::Migration
  def change
    create_table :sterilizations do |t|
      t.string :municipality
      t.date :surgery_date
      t.integer :species_id
      t.integer :genre_id
      t.integer :age_group_id
      t.boolean :vaccine
      t.integer :establishment_id

      t.timestamps
    end
  end
end
