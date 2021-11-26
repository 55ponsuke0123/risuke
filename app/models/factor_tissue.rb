class FactorTissue < ActiveHash::Base
  self.data = [
    { id: 1, name: '有' },
    { id: 2, name: '無' }
  ]

  include ActiveHash::Associations
  has_many :patient_evaluations
end