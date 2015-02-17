json.array!(@ten_annexes) do |ten_annex|
  json.extract! ten_annex, :id, :sesa_personas, :estados_municipios_personas, :sedena_semar, :sagarpa_personas, :escuelas_veterinarias_personas, :grupos_comunidad_personas, :voluntarios_personas, :otros_personas, :imss_prospera_personas, :total_personas, :jurisdiction_id
  json.url ten_annex_url(ten_annex, format: :json)
end
