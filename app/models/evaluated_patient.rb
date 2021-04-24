class EvaluatedPatient < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_one :evaluated_patient
end
