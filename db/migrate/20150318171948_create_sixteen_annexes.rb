class CreateSixteenAnnexes < ActiveRecord::Migration
  def change
    create_table :sixteen_annexes do |t|
      t.integer :numero_carteles
      t.integer :numero_volantes
      t.integer :numero_folletos
      t.integer :numero_tripticos
      t.integer :spots_radio
      t.integer :spots_tv
      t.integer :numero_entrevistas
      t.integer :numero_platicas
      t.integer :hrs_perifoneo
      t.integer :cunas_periodisticas
      t.integer :pinta_bardas
      t.integer :mantas
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
