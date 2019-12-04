json.extract! order, :id, :origin, :destination, :plan, :insurance, :status, :vendor_id, :created_at, :updated_at
json.url order_url(order, format: :json)
