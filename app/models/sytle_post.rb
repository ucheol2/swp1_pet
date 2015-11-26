class SytlePost < ActiveRecord::Base
    mount_uploader :img, S3Uploader
end
