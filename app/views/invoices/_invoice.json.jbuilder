json.extract! invoice, :id, :date, :customer, :tax, :vendor, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)