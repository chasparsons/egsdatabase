class Opcode < ApplicationRecord
  belongs_to :operation
  belongs_to :cpt_codes
end
