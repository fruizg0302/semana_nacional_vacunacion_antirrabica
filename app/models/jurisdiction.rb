class Jurisdiction < ActiveRecord::Base
  belongs_to :state
  has_many :eight_annexes

  def self.subtractor(selected_jurisdictions_array, state_id)
    all_jurisdictions_array_by_state = State.find(state_id).jurisdictions.collect {|x| x.id}
    result = all_jurisdictions_array_by_state - selected_jurisdictions_array 
  end
end
