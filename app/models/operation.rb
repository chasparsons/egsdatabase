class Operation < ApplicationRecord
  belongs_to :surgeon
  belongs_to :patient
  #has_many :cpt_codes, through :op_code_links

  # Validate the fields
  
end
