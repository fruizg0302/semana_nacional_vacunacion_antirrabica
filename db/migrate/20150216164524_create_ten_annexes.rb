class CreateTenAnnexes < ActiveRecord::Migration
  def change
    create_table :ten_annexes do |t|
      t.integer :sesa_personas
      t.integer :estados_municipios_personas
      t.integer :sedena_semar
      t.integer :sagarpa_personas
      t.integer :escuelas_veterinarias_personas
      t.integer :grupos_comunidad_personas
      t.integer :voluntarios_personas
      t.integer :otros_personas
      t.integer :imss_prospera_personas
      t.integer :total_personas
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
