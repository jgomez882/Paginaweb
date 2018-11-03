class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geolocations do |t|
      t.string :title
      t.text :body
      t.integer :visits_count

      t.timestamps null: false
    end
  end
end
