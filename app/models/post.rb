class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    has_many :libs, dependent: :destroy
    mount_uploader :front_img, S3uploaderUploader
    mount_uploader :main_img, S3uploaderUploader
    mount_uploader :word_cloud, S3uploaderUploader
    mount_uploader :door_img, S3uploaderUploader
end
