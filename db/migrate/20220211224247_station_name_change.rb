class StationNameChange < ActiveRecord::Migration[6.1]
  def change
    rename_column :stations, :station_types_id, :station_type_id
  end
end
