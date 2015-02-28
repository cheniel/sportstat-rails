class CreateBasketballGames < ActiveRecord::Migration
  def change
    create_table :basketball_games do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :assists
      t.integer :two_pointers
      t.integer :three_pointers
      t.string :notes

      t.timestamps
    end
  end
end
