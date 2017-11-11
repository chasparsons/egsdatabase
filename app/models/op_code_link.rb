class OpCodeLink < ApplicationRecord
	belongs_to :operation
	belongs_to :cpt_code
end
