class Station < ApplicationRecord
  belongs_to :user
  belongs_to :station_type
end
