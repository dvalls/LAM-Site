class Feed < ActiveRecord::Base

  translates :title, :body
  mount_uploader :image, FeedImageUploader

end
