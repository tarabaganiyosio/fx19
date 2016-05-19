json.array!(@evas) do |eva|
  json.extract! eva, :id, :user_id, :broker_id, :body, :title
  json.url eva_url(eva, format: :json)
end
