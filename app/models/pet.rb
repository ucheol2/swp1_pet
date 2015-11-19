class Pet < ActiveRecord::Base
    mount_uploader :img, S3Uploader
end
