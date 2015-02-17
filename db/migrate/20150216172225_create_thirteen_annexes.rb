class CreateThirteenAnnexes < ActiveRecord::Migration
  def change
    create_table :thirteen_annexes do |t|
      t.integer :numero_cds_dist
      t.integer :numero_cd_perifoneo_dist
      t.integer :numero_carteles_dist
      t.integer :numero_cds_local
      t.integer :numero_cd_perifoneo_local
      t.integer :numero_carteles_local
      t.integer :numero_estaciones_am
      t.integer :numero_estaciones_fm
      t.integer :total_estaciones
      t.integer :promedio_impactos_dia
      t.date :fecha_inicio_difusion
      t.date :fecha_termino_difusion
      t.integer :promedio_dias_difusion
      t.integer :equipo_perifoneo_oficial
      t.integer :equipo_perifoneo_privado
      t.integer :equipo_perifoneo_total
      t.integer :promedio_horas_difusion
      t.date :fecha_inicio_difusion_perifoneo_local
      t.date :fecha_termino_difusion_perifoneo_local
      t.integer :promedio_dias_perifoneo
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
