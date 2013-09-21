class TradesController < ApplicationController
  def index
  	@trades = Trade.includes(:brokerage, :counterparty, :instrument, :location, :mtm, :note, :tag, :trader)
  end
end
