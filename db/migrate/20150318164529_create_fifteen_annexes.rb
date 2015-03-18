class CreateFifteenAnnexes < ActiveRecord::Migration
  def change
    create_table :fifteen_annexes do |t|
      t.integer :numero_municipios
      t.integer :localidades_trabajadas
      t.integer :logros_perros
      t.integer :logros_gatos
      t.integer :logros_total
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
