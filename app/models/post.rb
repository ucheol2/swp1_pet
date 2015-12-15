class Post < ActiveRecord::Base
  
  belongs_to :user
  
  mount_uploader :img, S3Uploader
end
