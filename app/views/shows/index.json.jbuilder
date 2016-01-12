json.array!(@shows) do |show|
  json.extract! show, :id, :event_id, :venue_id, :showtime, :layout_id
  json.url show_url(show, format: :json)
end
