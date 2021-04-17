class Patient < ApplicationRecord

  enum sex_id: { male: 1, female: 2 }

  enum family_living_together_id: { presence: 1, absence: 2 }
end
