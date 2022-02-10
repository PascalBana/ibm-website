class AddStationtypeToStations < ActiveRecord::Migration[6.1]
  def change
    add_reference :stations, :station_types, null: false, foreign_key: true
  end
end
