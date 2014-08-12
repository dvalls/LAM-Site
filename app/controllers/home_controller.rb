class HomeController < ApplicationController
  def index
    @feeds = Feed.limit(5)
    @carousels = Carousel.order(order: :asc)
  end
end
