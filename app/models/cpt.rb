class Cpt < ApplicationRecord
	has_and_belongs_to_many :operations
end