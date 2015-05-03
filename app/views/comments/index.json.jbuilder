json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :date, :user_id, :entries_id
  json.url comment_url(comment, format: :json)
end
