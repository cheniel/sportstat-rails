if not @relationship.nil?
  json.extract! @relationship, :id, :follower_id, :following_id, :created_at, :updated_at
end
json.found !@relationship.nil?
