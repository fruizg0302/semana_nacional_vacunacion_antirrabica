json.array!(@twelve_annexes) do |twelve_annex|
  json.extract! twelve_annex, :id, :difusion_acumulado_total, :carteles, :volantes, :folletos, :tripticos, :spots_tv, :spots_radio, :entrevistas_tv, :entrevistas_radio, :platicas, :horas_perifoneo, :cunas_periodisticas, :pinta_bardas, :mantas, :jurisdiction_id
  json.url twelve_annex_url(twelve_annex, format: :json)
end
