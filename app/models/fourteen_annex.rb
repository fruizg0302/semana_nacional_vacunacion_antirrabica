class FourteenAnnex < ActiveRecord::Base
  def self.state_results(state_id)
    self.find_by_sql("select fa.* from fourteen_annexes as fa inner join jurisdictions as j on j.id = fa.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select fa.id, fa.jurisdiction_id from fourteen_annexes as fa inner join jurisdictions as j on j.id = fa.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end

end
