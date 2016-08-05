class CreateSuggests < ActiveRecord::Migration
  def change
    create_table :suggests do |t|
      t.string :product_name
      t.integer :status
      t.text :description
      t.integer :price_min
      t.integer :price_max
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
