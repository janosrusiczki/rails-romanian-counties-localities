class ImportCounties < ActiveRecord::Migration
  def up
    require './db/data/counties.rb'
  end

  def down
    County.destroy_all
  end
end