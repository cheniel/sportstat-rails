class User < ActiveRecord::Base
  has_many :basketball_games
  validates_uniqueness_of :username
  has_and_belongs_to_many(:following,
    :join_table => "user_relationships",
    :foreign_key => "follower_id",
    :association_foreign_key => "following_id")
end
