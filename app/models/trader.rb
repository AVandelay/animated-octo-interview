class Trader < ActiveRecord::Base
  attr_accessible :name

  has_many :trade
end
