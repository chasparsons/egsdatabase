class Operation < ApplicationRecord
  belongs_to :surgeon
  belongs_to :patient
<<<<<<< HEAD
  has_and_belongs_to_many :cpts
=======
  has_many :cpt_codes, through: :opcodes
  has_many :complications, dependent: :destroy
>>>>>>> d7457d94249adc4805dbc5ca27b6304c398cb1ac

  # Validate the fields
  # Validate the fields for having values
  validates :surgeon, presence: true

end
