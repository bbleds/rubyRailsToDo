json.array!(@brodos) do |brodo|
  json.extract! brodo, :id, :title, :description
  json.url brodo_url(brodo, format: :json)
end
