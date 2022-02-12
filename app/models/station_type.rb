class StationType < ApplicationRecord
  has_many :stations
  belongs_to :mat_type
end
