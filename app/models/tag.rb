class Tag < ActiveRecord::Base
  attr_accessible :text

  has_many :trade
end
