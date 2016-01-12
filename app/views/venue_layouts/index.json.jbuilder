json.array!(@venue_layouts) do |venue_layout|
  json.extract! venue_layout, :id, :venue_id, :name, :capacity
  json.url venue_layout_url(venue_layout, format: :json)
end
