json.extract! asig_detail, :id, :quantity, :stock_id, :asig_stock_id, :created_at, :updated_at
json.url asig_detail_url(asig_detail, format: :json)
