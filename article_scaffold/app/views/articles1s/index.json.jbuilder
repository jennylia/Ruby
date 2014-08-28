json.array!(@articles1s) do |articles1|
  json.extract! articles1, :id, :title, :body
  json.url articles1_url(articles1, format: :json)
end
