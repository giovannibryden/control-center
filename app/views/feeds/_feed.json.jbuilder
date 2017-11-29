json.extract! feed, :id, :source, :api_key, :api_secret, :created_at, :updated_at
json.url feed_url(feed, format: :json)
