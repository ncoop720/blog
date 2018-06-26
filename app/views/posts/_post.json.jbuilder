json.extract! post, :id, :author, :categories, :title, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
