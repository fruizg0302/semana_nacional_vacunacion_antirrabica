class CreateTwelveAnnexes < ActiveRecord::Migration
  def change
    create_table :twelve_annexes do |t|
      t.integer :difusion_acumulado_total
      t.integer :carteles
      t.integer :volantes
      t.integer :folletos
      t.integer :tripticos
      t.integer :spots_tv
      t.integer :spots_radio
      t.integer :entrevistas_tv
      t.integer :entrevistas_radio
      t.integer :platicas
      t.integer :horas_perifoneo
      t.integer :cunas_periodisticas
      t.integer :pinta_bardas
      t.integer :mantas
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
