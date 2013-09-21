class CreateMtms < ActiveRecord::Migration
  def change
    create_table :mtms do |t|
      t.string :name

      t.timestamps
    end
  end
end
