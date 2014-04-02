json.array!(@time_points) do |time_point|
  json.extract! time_point, :id, :title, :start_date, :importance, :timeline_id
  json.url time_point_url(time_point, format: :json)
end
