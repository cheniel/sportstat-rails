json.array!(@users) do |user|
  json.extract! user, :id, :username,:avatar
  json.url user_url(user, format: :json)
  json.games do
    json.array!(user.games) do |game|
      json.extract! game, :id, :start_time, :end_time, :assists, :two_pointers, :three_pointers, :notes, :user_id, :created_at, :updated_at, :username
    end
  end
end
