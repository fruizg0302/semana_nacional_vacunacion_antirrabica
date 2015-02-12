class CreateEightAnnexes < ActiveRecord::Migration
  def change
    create_table :eight_annexes do |t|
      t.integer :perros_estimados
      t.integer :gatos_estimados
      t.integer :total_estimados
      t.integer :perros_por_vacunar
      t.integer :gatos_por_vacunar
      t.integer :total_por_vacunar
      t.integer :perros_vsn
      t.integer :gatos_vsn
      t.integer :total_vsn
      t.integer :brigadas_dia
      t.integer :puestos_fijos
      t.integer :numero_de_dias
      t.integer :jurisdiction_id

      t.timestamps
    end
  end
end
