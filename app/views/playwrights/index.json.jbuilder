json.array!(@playwrights) do |playwright|
  json.extract! playwright, :id, :happening_now_title, :happening_now_description, :coming_up_title, :coming_up_description, :press
  json.url playwright_url(playwright, format: :json)
end
