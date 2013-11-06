class Carousel < ActiveRecord::Base

  translates :title, :description
  mount_uploader :image_url, CarouselUploader

  belongs_to :project

end
