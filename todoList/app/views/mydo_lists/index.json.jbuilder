json.array!(@mydo_lists) do |mydo_list|
  json.extract! mydo_list, :id, :title, :description
  json.url mydo_list_url(mydo_list, format: :json)
end
