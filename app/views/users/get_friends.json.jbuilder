json.array!(@friends) do |friend|
  json.extract! friend, :id, :username, :created_at, :updated_at, :avatar
  json.url user_url(friend, format: :json)
  json.games do
    json.array!(user.games) do |game|
      json.extract! game, :id, :start_time, :end_time, :assists, :two_pointers, :three_pointers, :notes, :user_id, :created_at, :updated_at, :username
    end
  end
end