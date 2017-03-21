json.extract! product, :id, :name, :description, :picture, :purchase_price, :sale_price, :times_sold, :created_at, :updated_at
json.url product_url(product, format: :json)
