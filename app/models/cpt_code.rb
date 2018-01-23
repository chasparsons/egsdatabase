class CptCode < ApplicationRecord
	has_many :opt_code_links
	has_many :operations, :through => :op_code_link
end
