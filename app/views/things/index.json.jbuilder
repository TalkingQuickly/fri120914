json.array!(@things) do |thing|
  json.extract! thing, :id, :something
  json.url thing_url(thing, format: :json)
end
