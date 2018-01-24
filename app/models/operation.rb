class Operation < ApplicationRecord
  belongs_to :surgeon
  belongs_to :patient
  has_many :cpt_codes
  has_many :complications

  # Validate the fields
  
end
