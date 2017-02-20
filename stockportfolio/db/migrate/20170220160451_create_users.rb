class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name,
      t.string :last_name,
      t.string :password,
      t.string :email

      add_index :first_name, :email 

      t.timestamps
    end
  end
end
