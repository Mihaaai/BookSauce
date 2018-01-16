json.extract! comment, :id, :message, :rating, :created_at, :updated_at
json.url comment_url(comment, format: :json)
