class County < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :localities
end
