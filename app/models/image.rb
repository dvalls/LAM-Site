class Image < ActiveRecord::Base

  validates_presence_of :url

  belongs_to :imageable, :polymorphic => true

  mount_uploader :url, ImageUploader
end
