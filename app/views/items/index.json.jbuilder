json.array!(@items) do |item|
  json.extract! item, :item_id, :box_id, :name, :value
  json.url item_url(item, format: :json)
end