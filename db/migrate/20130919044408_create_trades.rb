class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :counterparty_id
      t.integer :trader_id
      t.integer :mtm_id
      t.integer :location_id
      t.integer :instrument_id
      t.integer :brokerage_id
      t.integer :tag_id
      t.integer :note_id
      t.string :buy_sell
      t.decimal :price
      t.decimal :volume
      t.date :tenor_start
      t.date :tenor_end

      t.timestamps
    end
  end
end
