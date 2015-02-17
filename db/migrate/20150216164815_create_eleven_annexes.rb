class CreateElevenAnnexes < ActiveRecord::Migration
  def change
    create_table :eleven_annexes do |t|
      t.integer :numero_frascos
      t.integer :numero_dosis
      t.integer :placas
      t.integer :chinchos
      t.integer :comprobantes_cartillas
      t.integer :agujas
      t.integer :jeringas
      t.integer :thermos
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
