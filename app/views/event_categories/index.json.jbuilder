json.array!(@event_categories) do |event_category|
  json.extract! event_category, :id, :description
  json.url event_category_url(event_category, format: :json)
end
