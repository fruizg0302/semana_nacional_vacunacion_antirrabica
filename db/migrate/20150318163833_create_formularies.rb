class CreateFormularies < ActiveRecord::Migration
  def change
    create_table :formularies do |t|
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
