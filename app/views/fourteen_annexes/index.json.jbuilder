json.array!(@fourteen_annexes) do |fourteen_annex|
  json.extract! fourteen_annex, :id, :numero_municipios, :localidades_trabajadas, :logros_perros, :logros_gatos, :logros_total, :porcentaje_cumplimiento, :puestos, :brigadas, :personas_sesa, :personas_edo_mpio, :personas_sagarpa, :personas_escuelas_vet_pec, :personas_gpos, :personas_voluntarios, :personas_imss_prospera, :personas_total
  json.url fourteen_annex_url(fourteen_annex, format: :json)
end
