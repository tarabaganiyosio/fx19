json.array!(@replies) do |reply|
  json.extract! reply, :id, :user_id, :ba_id, :body
  json.url reply_url(reply, format: :json)
end
