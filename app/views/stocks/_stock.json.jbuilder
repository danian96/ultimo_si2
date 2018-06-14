json.extract! stock, :id, :item_name, :quantity, :buying_date, :stock_category_id, :created_at, :updated_at
json.url stock_url(stock, format: :json)
