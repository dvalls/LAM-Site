class Feed < ActiveRecord::Base
  default_scope order('created_at DESC')
  translates :title, :body
  mount_uploader :image, FeedImageUploader

end
