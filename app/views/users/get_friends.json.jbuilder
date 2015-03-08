json.array!(@friends) do |friend|
  json.extract! friend, :id, :username, :created_at, :updated_at, :avatar
  json.url user_url(friend, format: :json)
  json.games do
    json.array!(user.games) do |game|
      json.extract! game, :id, :start_time, :end_time, :assists, :two_pointers, :three_pointers, :user_id, :notes, :username, :user_avatar, :lat, :long, :duration, :distance, :possessions
    end
  end
end