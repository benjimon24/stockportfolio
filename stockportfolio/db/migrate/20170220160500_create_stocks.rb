class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :name, null: false
      t.references :portfolio, null: false
      t.float :cost_basis, null: false
      t.integer :volume, default: 1
      t.string :symbol, null: false 

      t.timestamps
    end
  end
end
