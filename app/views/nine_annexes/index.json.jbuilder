json.array!(@nine_annexes) do |nine_annex|
  json.extract! nine_annex, :id, :numero_municipios, :numero_municipios_imss_prospera, :universo_perros_imss_prospera, :universo_gatos_imss_prospera, :universo_total_imss_prospera, :perros_vacunar_imss_prospera, :gatos_vacunar_imss_prospera, :total_vacunar_imss_prospera, :jurisdiction_id
  json.url nine_annex_url(nine_annex, format: :json)
end
