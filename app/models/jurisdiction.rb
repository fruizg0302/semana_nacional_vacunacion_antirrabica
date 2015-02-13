class Jurisdiction < ActiveRecord::Base
  belongs_to :state
  has_many :eigth_annexes
end
