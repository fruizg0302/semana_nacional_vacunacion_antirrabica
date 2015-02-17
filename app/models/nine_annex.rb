class NineAnnex < ActiveRecord::Base

  def self.state_results(state_id)
    self.find_by_sql("select na.id, na.numero_municipios, na.numero_municipios_imss_prospera, na.universo_perros_imss_prospera, na.universo_gatos_imss_prospera, na.universo_total_imss_prospera, na.perros_vacunar_imss_prospera, na.gatos_vacunar_imss_prospera, na.total_vacunar_imss_prospera, na.jurisdiction_id from nine_annexes as na inner join jurisdictions as j on j.id = na.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select ea.id, ea.jurisdiction_id from nine_annexes as ea inner join jurisdictions as j on j.id = ea.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end

end
