class Surgeon < ApplicationRecord
	# create one-to-many association with patients
	has_many :patients
	
	# Validate the fields for having values
	validates :firstname, :lastname, :email, presence: true, length: { minimum: 4 }
	# check if unique
	validates :email, uniqueness: { case_sensitive: false }

	def name_for_display
    	"#{firstname} #{lastname}"
  	end
end
