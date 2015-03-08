json.array!(@users) do |user|
  json.extract! user, :id, :username,:avatar
  json.url user_url(user, format: :json)
  json.games do
    json.array!(user.games) do |game|
      json.extract! game, :id, :start_time, :end_time, :assists, :two_pointers, :three_pointers, :user_id, :notes, :username, :user_avatar, :lat, :long, :duration, :distance, :possessions
    end
  end
end
