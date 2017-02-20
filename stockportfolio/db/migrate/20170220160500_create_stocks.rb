class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :name, null: false
      t.references :portfolio, null: false
      t.float :buy_price, null: false
      t.integer :volume, default: 1
      t.string :symbol, null: false

      t.timestamps
    end
  end
end
