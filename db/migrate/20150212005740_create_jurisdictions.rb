class CreateJurisdictions < ActiveRecord::Migration
  def change
    create_table :jurisdictions do |t|
      t.string :jurisdiction_name
      t.integer :state_id

      t.timestamps
    end
  end
end
