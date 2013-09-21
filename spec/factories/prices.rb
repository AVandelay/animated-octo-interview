# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    mtm_id 1
    date "2013-09-15"
    market_price "9.99"
  end
end
