class Cpt < ApplicationRecord
	has_many :cpt_operations,dependent: :destroy
	has_many :operations, :through => :cpt_operations

end
