json.array!(@time_items) do |time_item|
  json.extract! time_item, :id, :title, :start_date, :end_date, :importance, :timeline_id
  json.url time_item_url(time_item, format: :json)
end
