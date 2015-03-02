class BasketballGame < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"

  def username
    user.username
  end
end
