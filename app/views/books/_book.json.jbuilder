json.extract! book, :id, :abstract, :summary, :photo, :shop, :category_id, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
