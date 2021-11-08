json.extract! product, :id, :sku, :title, :quantity, :manufacturer_id, :created_at, :updated_at
json.url product_url(product, format: :json)
