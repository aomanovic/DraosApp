json.array!(@sections) do |section|
  json.extract! section, :id, :name, :description, :capacity, :layout_id
  json.url section_url(section, format: :json)
end
