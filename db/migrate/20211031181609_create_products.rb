class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sku, null: false
      t.text :title, null: false
      t.integer :quantity, null: false, default: 0

      t.timestamps
    end

    add_index :products, :sku, unique: true
  end
end
