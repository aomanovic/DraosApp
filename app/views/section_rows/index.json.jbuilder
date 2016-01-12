json.array!(@section_rows) do |section_row|
  json.extract! section_row, :id, :name, :capacity, :section_id
  json.url section_row_url(section_row, format: :json)
end
