json.array!(@friends) do |friend|
  json.extract! friend, :id, :username, :created_at, :updated_at
  json.url user_url(friend, format: :json)
end