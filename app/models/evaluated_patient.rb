class EvaluatedPatient < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_one :patient_detail
end
