class TwelveAnnex < ActiveRecord::Base
  def self.state_results(state_id)
    self.find_by_sql("select  na.id, na.difusion_acumulado_total, na.carteles, na.volantes, na.folletos, na.tripticos, na.spots_tv, na.spots_radio, na.entrevistas_tv, na.entrevistas_radio, na.platicas, na.horas_perifoneo, na.cunas_periodisticas, na.pinta_bardas, na.mantas, na.jurisdiction_id from twelve_annexes as na inner join jurisdictions as j on j.id = na.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select ea.id, ea.jurisdiction_id from twelve_annexes as ea inner join jurisdictions as j on j.id = ea.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end
end
