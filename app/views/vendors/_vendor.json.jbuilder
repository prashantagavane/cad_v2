json.extract! vendor, :id, :name, :email, :release, :delivered_orders, :failed_orders, :deal, :discount, :sla, :penalty, :balance_payment, :actual_payment, :created_at, :updated_at
json.url vendor_url(vendor, format: :json)
