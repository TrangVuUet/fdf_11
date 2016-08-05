class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :code
      t.integer :status
      t.integer :number_items
      t.integer :total_price
      t.string :ship_address
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
