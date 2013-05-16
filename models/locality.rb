class Locality < ActiveRecord::Base
  attr_accessible :county_id, :latitude, :longitude, :name, :siruta
  belongs_to :county
end
