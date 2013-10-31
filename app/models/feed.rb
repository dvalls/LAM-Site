class Feed < ActiveRecord::Base

  translates :title, :body
  mount_uploader :images, FeedImageUploader

end
