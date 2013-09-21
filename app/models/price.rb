class Price < ActiveRecord::Base
  attr_accessible :date, :market_price, :mtm_id

  belongs_to :mtm
end
