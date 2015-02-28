class AddUserIdToBasketballGame < ActiveRecord::Migration
  def change
    add_column :basketball_games, :user_id, :integer
    add_index :basketball_games, :user_id
  end
end
