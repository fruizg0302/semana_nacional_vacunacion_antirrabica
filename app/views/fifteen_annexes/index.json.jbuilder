json.array!(@fifteen_annexes) do |fifteen_annex|
  json.extract! fifteen_annex, :id, :numero_municipios, :localidades_trabajadas, :logros_perros, :logros_gatos, :logros_total, :jurisdiction_id
  json.url fifteen_annex_url(fifteen_annex, format: :json)
end
