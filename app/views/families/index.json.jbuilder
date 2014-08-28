json.array!(@families) do |family|
  json.extract! family, :id, :nome, :descr
  json.url family_url(family, format: :json)
end
