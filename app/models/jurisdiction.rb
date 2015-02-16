class Jurisdiction < ActiveRecord::Base
  belongs_to :state
  has_many :eight_annexes
end
