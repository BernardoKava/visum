json.extract! item, :id, :inventory_id, :item, :description, :quantity, :value, :virtual, :created_at, :updated_at
json.url item_url(item, format: :json)
