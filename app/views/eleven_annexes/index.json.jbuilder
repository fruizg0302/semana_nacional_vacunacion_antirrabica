json.array!(@eleven_annexes) do |eleven_annex|
  json.extract! eleven_annex, :id, :numero_frascos, :numero_dosis, :placas, :chinchos, :comprobantes_cartillas, :agujas, :jeringas, :thermos, :jurisdiction_id
  json.url eleven_annex_url(eleven_annex, format: :json)
end
