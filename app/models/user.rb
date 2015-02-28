class User < ActiveRecord::Base
  has_many :basketball_games
  validates_uniqueness_of :username
end
