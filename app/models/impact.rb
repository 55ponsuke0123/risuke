class Impact < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ăă' },
    { id: 2, name: 'ăȘă' }
  ]

  include ActiveHash::Associations
  has_many :patient_evaluations
end