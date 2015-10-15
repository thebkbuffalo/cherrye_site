json.array!(@performances) do |performance|
  json.extract! performance, :id, :title, :caption, :link_to_buy
  json.url performance_url(performance, format: :json)
end
