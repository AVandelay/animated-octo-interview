# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trade do
    counterparty_id 1
    trader_id 1
    mtm_id 1
    location_id 1
    instrument_id 1
    brokerage_id 1
    tag_id 1
    note_id 1
    buy_sell "MyString"
    price "9.99"
    volume "9.99"
    tenor_start "2013-09-15"
    tenor_end "2013-09-15"
  end
end
