# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach(Rails.root.join('db', 'data', 'brokerage.csv'), headers: true) do |row|
  Brokerage.create!(
      #id: row[0],
      name: row[1],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'counterparty.csv'), headers: true) do |row|
  Counterparty.create!(
      #id: row[0],
      name: row[1],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'instrument.csv'), headers: true) do |row|
  Instrument.create!(
      #id: row[0],
      name: row[1],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'location.csv'), headers: true) do |row|
  Location.create!(
      #id: row[0],
      name: row[1],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'mtm.csv'), headers: true) do |row|
  Mtm.create!(
      #id: row[0],
      name: row[1],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'note.csv'), headers: true) do |row|
  Note.create!(
      #id: row[0],
      text: row[1],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'price.csv'), headers: true) do |row|
  Price.create!(
      #id: row[0],
      mtm_id: row[1],
      date: DateTime.strptime(row[2], '%m/%d/%Y'),
      market_price: row[3],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'tag.csv'), headers: true) do |row|
  Tag.create!(
      #id: row[0],
      text: row[1],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'trade.csv'), headers: true) do |row|
  Trade.create!(
      #id: row[0],
      counterparty_id: row[1],
      trader_id: row[2],
      mtm_id: row[3],
      location_id: row[4],
      instrument_id: row[5],
      brokerage_id: row[6],
      tag_id: row[7],
      note_id: row[8],
      buy_sell: row[9],
      price: row[10],
      volume: row[11],
      tenor_start: DateTime.strptime(row[12], '%m/%d/%Y'),
      tenor_end: DateTime.strptime(row[13], '%m/%d/%Y'),
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'trader.csv'), headers: true) do |row|
  Trader.create!(
      #id: row[0],
      name: row[1],
  	)
end