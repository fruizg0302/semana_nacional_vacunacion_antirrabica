json.array!(@eight_annexes) do |eight_annex|
  json.extract! eight_annex, :id, :perros_estimados, :gatos_estimados, :total_estimados, :perros_por_vacunar, :gatos_por_vacunar, :total_por_vacunar, :perros_vsn, :gatos_vsn, :total_vsn, :brigadas_dia, :puestos_fijos, :numero_de_dias, :jurisdiction_id
  json.url eight_annex_url(eight_annex, format: :json)
end
