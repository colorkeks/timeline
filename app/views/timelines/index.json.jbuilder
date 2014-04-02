json.array!(@timelines) do |timeline|
  json.extract! timeline, :id, :title, :focus_date, :initial_zoom
  json.url timeline_url(timeline, format: :json)
end
