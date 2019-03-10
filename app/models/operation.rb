class Operation < ApplicationRecord
  belongs_to :surgeon
  belongs_to :patient
  has_and_belongs_to_many :cpts

  # Validate the fields
  
end
