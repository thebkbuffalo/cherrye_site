json.array!(@biographies) do |biography|
  json.extract! biography, :id, :bio, :press
  json.url biography_url(biography, format: :json)
end
