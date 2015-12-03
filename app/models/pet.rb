class Pet < ActiveRecord::Base
    belongs_to :user
    has_many :healthnotes
    
    mount_uploader :img, S3Uploader
end
