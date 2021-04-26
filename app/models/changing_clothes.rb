class ChangingClothes < ActiveHash::Base
  self.data = [
    { id: 1, name: '自立（10点）' },
    { id: 2, name: '部分介助（5点）' },
    { id: 3, name: '全介助（0点）' }
  ]

  include ActiveHash::Associations
  has_many :patient_evaluations
end