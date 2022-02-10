class StationType < ApplicationRecord
  belongs_to :station
  has_one :mat_type
end
