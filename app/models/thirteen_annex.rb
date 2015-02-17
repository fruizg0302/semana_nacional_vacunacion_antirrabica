class ThirteenAnnex < ActiveRecord::Base
  def self.state_results(state_id)
    self.find_by_sql("select na.id, na.numero_cds_dist, na.numero_cd_perifoneo, na.numero_carteles, na.numero_cds_local, na.numero_cd_perifoneo_local, na.numero_carteles_local, na.numero_estaciones_am, na.numero_estaciones_fm, na.total_estaciones, na.promedio_impactos, na.fecha_inicio_difusion, na.fecha_termino_difusion, na.promedio_dias_difusion, na.equipo_perifoneo_oficial, na.equipo_perifoneo_privado, na.equipo_perifoneo_total, na.promedio_horas_difusion, na.fecha_inicio_difusion_perifoneo_local, na.fecha_termino_difusion_perifoneo_local, na.promedio_dias_perifoneo ,na.jurisdiction_id from twelve_annexes as na inner join jurisdictions as j on j.id = na.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select ea.id, ea.jurisdiction_id from twelve_annexes as ea inner join jurisdictions as j on j.id = ea.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end
end
