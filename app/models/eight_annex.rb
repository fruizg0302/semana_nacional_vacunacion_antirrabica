class EightAnnex < ActiveRecord::Base
  belongs_to :jurisdiction
  #def self.state_results (id)
  #  self.find_by_sql("select * from formularies as f inner join users as s on s.id = f.user_id inner join jurisdictions as j on j.id = s.jurisdiction_id inner join states as st on j.state_id = st.id where st.id= #{id}")
  #end

  def self.state_results(state_id)
    self.find_by_sql("select ea.id, ea.perros_estimados, ea.gatos_estimados, ea.total_estimados, ea.perros_por_vacunar, ea.gatos_por_vacunar, ea.total_por_vacunar, ea.perros_vsn, ea.gatos_vsn, ea.total_vsn, ea.brigadas_dia, ea.puestos_fijos, ea.numero_de_dias, ea.jurisdiction_id from eight_annexes as ea inner join jurisdictions as j on j.id = ea.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ")
  end

  def self.state_total(state_id)
    jurisdiction_array = Jurisdiction.where("state_id = ?", state_id).pluck(:id)
    self.find_by_sql("select sum(id), sum(perros_estimados), sum(gatos_estimados), sum(total_estimados), sum(perros_por_vacunar), sum(gatos_por_vacunar), sum(total_por_vacunar), sum(perros_vsn), sum(gatos_vsn), sum(total_vsn), sum(brigadas_dia), sum(puestos_fijos), sum(numero_de_dias) from eight_annexes where jurisdiction_id in (#{jurisdiction_array.join(",")}) ")
  end

  def self.captured_jurisdictions(state_id)
    self.find_by_sql("select ea.id, ea.jurisdiction_id from eight_annexes as ea inner join jurisdictions as j on j.id = ea.jurisdiction_id inner join states as st on j.state_id = st.id where st.id =#{state_id} ").collect {|x| x.jurisdiction_id}
  end

  def self.available_jurisdictions(state_id)
    unavailable_jurisdictions_array = self.captured_jurisdictions(state_id)
    Jurisdiction.subtractor(unavailable_jurisdictions_array, state_id )
  end

end
