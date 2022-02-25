class CreateStationTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :station_types do |t|
      t.string :name
      t.integer :mats_per_min
      t.references :mat_type

      t.timestamps
    end
  end
end
