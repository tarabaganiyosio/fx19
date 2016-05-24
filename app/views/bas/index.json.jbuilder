json.array!(@bas) do |ba|
  json.extract! ba, :id, :user_id, :question_id, :body
  json.url ba_url(ba, format: :json)
end
