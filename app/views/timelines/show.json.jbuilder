json.array! 0...1 do
json.id "#{@timeline.id}"
json.title @timeline.title
json.focus_date "#{@timeline.focus_date} 12:00:00"
json.initial_zoom "#{@timeline.initial_zoom}"



json.events  @timeline.all_items do |item|
  
  if item.respond_to?(:end_date) 
    json.id "event_#{item.id}" 
  else
    json.id "point_#{item.id}"
  end

  json.title item.title 
  json.description item.description
  json.startdate "#{item.start_date} 12:00:00"
  json.enddate "#{item.end_date} 12:00:00" if item.respond_to?(:end_date)
  json.high_threshold "#{item.high_threshold}"
  json.importance "#{item.importance}"

  if item.respond_to?(:end_date)
    json.icon "triangle_orange.png" 
  else 
    json.icon "circle_purple.png"
  end

end





json.tags 


end