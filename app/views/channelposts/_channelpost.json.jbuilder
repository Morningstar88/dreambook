json.extract! channelpost, :id, :title, :body, :link, :created_at, :updated_at
json.url channelpost_url(channelpost, format: :json)
