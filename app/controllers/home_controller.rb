class HomeController < ApplicationController
  def index
    @feeds = Feed.order(created_at: :desc).limit(5)
    @carousels = Carousel.order(order: :asc)
  end
end
