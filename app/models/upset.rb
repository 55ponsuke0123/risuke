class Upset < ActiveHash::Base
  self.data = [
    { id: 1, name: '許容' },
    { id: 2, name: '大' }
  ]

  include ActiveHash::Associations
  has_many :patient_evaluations
end