class ElevenAnnex < ActiveRecord::Base
  def self.state_results(state_id)
    self.find_by_sql("select  na.id, na.numero_frascos, na.numero_dosis, na.placas, na.chinchos, na.comprobantes_cartillas, na.agujas, na.jeringas, na.thermos ,na.jurisdiction_id from eleven_annexes as na inner join jurisdictions as j on j.id = na.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select ea.id, ea.jurisdiction_id from eleven_annexes as ea inner join jurisdictions as j on j.id = ea.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end
end
