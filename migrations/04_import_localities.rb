class ImportLocalities < ActiveRecord::Migration
  def up
    require './db/data/localities.rb'
  end

  def down
    Locality.destroy_all
  end
end