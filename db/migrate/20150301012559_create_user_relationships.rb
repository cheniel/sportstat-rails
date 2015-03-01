class CreateUserRelationships < ActiveRecord::Migration
  def change
    create_table :user_relationships, :force => true do |t|
      t.integer :follower_id, :null => false
      t.integer :following_id, :null => false

      t.timestamps
    end
  end
end
