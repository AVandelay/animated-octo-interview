class Mtm < ActiveRecord::Base
  attr_accessible :name

  has_many :trades
  has_many :prices
end
