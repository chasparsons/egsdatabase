class Operation < ApplicationRecord
  belongs_to :surgeon
  belongs_to :patient
end
