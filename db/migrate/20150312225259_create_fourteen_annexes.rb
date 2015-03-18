class CreateFourteenAnnexes < ActiveRecord::Migration
  def change
    create_table :fourteen_annexes do |t|
      t.integer :numero_municipios
      t.integer :localidades_trabajadas
      t.integer :logros_perros
      t.integer :logros_gatos
      t.integer :logros_total
      t.integer :porcentaje_cumplimiento
      t.integer :puestos
      t.integer :brigadas
      t.integer :personas_sesa
      t.integer :personas_edo_mpio
      t.integer :personas_sagarpa
      t.integer :personas_escuelas_vet_pec
      t.integer :personas_gpos
      t.integer :personas_voluntarios
      t.integer :personas_imss_prospera
      t.integer :personas_total

      t.timestamps
    end
  end
end
