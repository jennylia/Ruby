json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :description, :no_follers
  json.url issue_url(issue, format: :json)
end
