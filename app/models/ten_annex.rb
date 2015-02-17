class TenAnnex < ActiveRecord::Base
  def self.state_results(state_id)
    self.find_by_sql("select  na.id, na.sesa_personas, na.estados_municipios_personas, na.sedena_semar, na.sagarpa_personas, na.escuelas_veterinarias_personas, na.grupos_comunidad_personas, na.voluntarios_personas, na.otros_personas, na.imss_prospera_personas, na.total_personas, na.jurisdiction_id from ten_annexes as na inner join jurisdictions as j on j.id = na.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select ea.id, ea.jurisdiction_id from ten_annexes as ea inner join jurisdictions as j on j.id = ea.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end
end
