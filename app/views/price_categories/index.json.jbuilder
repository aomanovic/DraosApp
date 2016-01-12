json.array!(@price_categories) do |price_category|
  json.extract! price_category, :id, :event_id, :venue_id, :section_id, :category_id, :price
  json.url price_category_url(price_category, format: :json)
end
