class AddManufacturerToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :manufacturer, foreign_key: true
  end
end
