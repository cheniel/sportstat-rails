class AddColumnsToBasketballGame < ActiveRecord::Migration
  def change
    add_column :basketball_games, :lat, :decimal
    add_column :basketball_games, :long, :decimal
    add_column :basketball_games, :duration, :integer
    add_column :basketball_games, :distance, :decimal
    add_column :basketball_games, :possessions, :integer
  end
end
