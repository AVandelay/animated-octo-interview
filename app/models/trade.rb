class Trade < ActiveRecord::Base
  attr_accessible :brokerage_id, :buy_sell, :counterparty_id, :instrument_id, :location_id, :mtm_id, :note_id, :price, :tag_id, :tenor_end, :tenor_start, :trader_id, :volume

  belongs_to :counterparty
  belongs_to :trader
  belongs_to :mtm
  belongs_to :location
  belongs_to :instrument
  belongs_to :brokerage
  belongs_to :tag
  belongs_to :note
  # scope :date_range, lambda { |date| where ("date between ? and ?", self.tenor_start, self.tenor_end) }
end
