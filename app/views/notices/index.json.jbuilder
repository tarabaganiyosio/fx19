json.array!(@notices) do |notice|
  json.extract! notice, :id, :title, :body, :category
  json.url notice_url(notice, format: :json)
end
