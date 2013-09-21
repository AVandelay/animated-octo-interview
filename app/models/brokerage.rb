class Brokerage < ActiveRecord::Base
  attr_accessible :name

  has_many :trades
end
