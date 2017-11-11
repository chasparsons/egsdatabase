class Patient < ApplicationRecord
	
	# create one-to-many association with operations
	has_many :operations, dependent: :destroy

	# Validate the fields for having values
	validates :mrn, :dob, presence: true
	# check if unique
	validates :mrn, length: { is: 7 }

end
