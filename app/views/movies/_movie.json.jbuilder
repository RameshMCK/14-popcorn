json.extract! movie, :id, :name, :released, :integer, :created_at, :updated_at
json.url movie_url(movie, format: :json)
