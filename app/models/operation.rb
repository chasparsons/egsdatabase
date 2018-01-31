class Operation < ApplicationRecord
  belongs_to :surgeon
  belongs_to :patient
  has_many :cpt_codes, through: :opcodes
  has_many :complications, dependent: :destroy

  # Validate the fields
  # Validate the fields for having values
  validates :surgeon, presence: true

end
