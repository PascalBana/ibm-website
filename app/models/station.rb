class Station < ApplicationRecord
  belongs_to :user
  has_one :station_type
end
