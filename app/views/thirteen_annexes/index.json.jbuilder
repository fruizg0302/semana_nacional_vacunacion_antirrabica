json.array!(@thirteen_annexes) do |thirteen_annex|
  json.extract! thirteen_annex, :id, :numero_cds_dist, :numero_cd_perifoneo_dist, :numero_carteles_dist, :numero_cds_local, :numero_cd_perifoneo_local, :numero_carteles_local, :numero_estaciones_am, :numero_estaciones_fm, :total_estaciones, :promedio_impactos_dia, :fecha_inicio_difusion, :fecha_termino_difusion, :promedio_dias_difusion, :equipo_perifoneo_oficial, :equipo_perifoneo_privado, :equipo_perifoneo_total, :promedio_horas_difusion, :fecha_inicio_difusion_perifoneo_local, :fecha_termino_difusion_perifoneo_local, :promedio_dias_perifoneo, :jurisdiction_id
  json.url thirteen_annex_url(thirteen_annex, format: :json)
end
