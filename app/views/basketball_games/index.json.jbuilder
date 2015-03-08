json.array!(@basketball_games) do |basketball_game|
  json.extract! basketball_game, :id, :start_time, :end_time, :assists, :two_pointers, :three_pointers, :user_id, :notes, :username, :user_avatar, :lat, :long, :duration, :distance, :possessions
  json.url basketball_game_url(basketball_game, format: :json)
end
