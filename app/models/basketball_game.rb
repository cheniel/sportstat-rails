class BasketballGame < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"

  def username
    user.username
  end

  def user_avatar
    user.avatar
  end
end
