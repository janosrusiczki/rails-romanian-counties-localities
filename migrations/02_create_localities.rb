class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.integer :county_id
      t.string :name
      t.integer :siruta
      t.decimal :latitude, precision: 18, scale: 16
      t.decimal :longitude, precision: 18, scale: 16

      t.timestamps
    end

    add_index :localities, :county_id
  end
end