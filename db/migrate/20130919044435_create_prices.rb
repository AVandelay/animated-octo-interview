class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :mtm_id
      t.date :date
      t.decimal :market_price

      t.timestamps
    end
  end
end
