class Post < ActiveRecord::Base
  
  has_many :user_posts
  has_many :users, through: :user_posts
  
  
  mount_uploader :img, S3Uploader
end
