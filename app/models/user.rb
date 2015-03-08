class User < ActiveRecord::Base
  has_many :basketball_games
  validates_uniqueness_of :username
  has_and_belongs_to_many(:users,
    :join_table => "user_relationships",
    :foreign_key => "follower_id",
    :association_foreign_key => "following_id")

  def following
    users
  end

  def following_ids
    ids = users.to_a.select{|f| f.id}
    ids << id
  end

  def games
    basketball_games
  end

  def to_s
    username
  end
end
