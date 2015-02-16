class CreateNineAnnexes < ActiveRecord::Migration
  def change
    create_table :nine_annexes do |t|
      t.integer :numero_municipios
      t.integer :numero_municipios_imss_prospera
      t.integer :universo_perros_imss_prospera
      t.integer :universo_gatos_imss_prospera
      t.integer :universo_total_imss_prospera
      t.integer :perros_vacunar_imss_prospera
      t.integer :gatos_vacunar_imss_prospera
      t.integer :total_vacunar_imss_prospera
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
