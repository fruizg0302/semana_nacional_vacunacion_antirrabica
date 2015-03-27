class SixteenAnnex < ActiveRecord::Base
  def self.state_results(state_id)
    self.find_by_sql("select sa.* from sixteen_annexes as sa inner join jurisdictions as j on j.id = na.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select sa.id, sa.jurisdiction_id from sixteen_annexes as sa inner join jurisdictions as j on j.id = sa.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end
end
