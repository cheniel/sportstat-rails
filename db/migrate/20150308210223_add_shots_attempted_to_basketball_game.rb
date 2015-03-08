class AddShotsAttemptedToBasketballGame < ActiveRecord::Migration
  def change
    add_column :basketball_games, :shots_attempted, :integer
  end
end
