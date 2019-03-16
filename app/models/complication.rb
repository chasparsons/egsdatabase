class Complication < ApplicationRecord
  belongs_to :operation

  enum area: [:wound, :bleeding, :icu, :arrest, :respiratory, :other]

  enum severity: [:severe, :moderate, :minor]

end
