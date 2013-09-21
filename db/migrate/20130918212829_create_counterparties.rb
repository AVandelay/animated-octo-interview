class CreateCounterparties < ActiveRecord::Migration
  def change
    create_table :counterparties do |t|
      t.string :name

      t.timestamps
    end
  end
end
