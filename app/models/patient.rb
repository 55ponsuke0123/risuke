class Patient < ApplicationRecord
  belongs_to :user

  validates :sex_id, presence: true
  validates :age, presence: true

  VALID_AGE_REGEX = /\A[0-9]+\z/.freeze    
  validates :age, presence: true, format: { with: VALID_AGE_REGEX }   

  VALID_ZENKAKU_REGEX = /\A[ぁ-んァ-ン一-龥]/
          with_options presence: true, format: { with: VALID_ZENKAKU_REGEX } do
          validates :name
          validates :disease_name
          validates :medical_history        
          end
  
end
