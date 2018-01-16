json.extract! book, :id, :abstract, :summary, :photo, :shopLink, :author, :created_at, :updated_at
json.url book_url(book, format: :json)
