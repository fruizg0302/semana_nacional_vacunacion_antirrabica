json.array!(@sixteen_annexes) do |sixteen_annex|
  json.extract! sixteen_annex, :id, :numero_carteles, :numero_volantes, :numero_folletos, :numero_tripticos, :spots_radio, :spots_tv, :numero_entrevistas, :numero_platicas, :hrs_perifoneo, :cunas_periodisticas, :pinta_bardas, :mantas, :jurisdiction_id
  json.url sixteen_annex_url(sixteen_annex, format: :json)
end
