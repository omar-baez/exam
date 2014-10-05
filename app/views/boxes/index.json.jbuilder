json.array!(@boxes) do |box|
  json.extract! box, :box_id, :user_id, :name, :total_value
  json.url box_url(box, format: :json)
end