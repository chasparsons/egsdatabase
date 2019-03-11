class Operation < ApplicationRecord
  belongs_to :surgeon
  belongs_to :patient

  has_many :cpt_operations, dependent: :destroy
  has_many :cpts, :through => :cpt_operations

  # Validate the fields
  # Validate the fields for having values
  validates :surgeon, presence: true

end
