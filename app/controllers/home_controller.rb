class HomeController < ApplicationController
  def index
    @feeds = Feed.all
    @carousels = Carousel.order(order: :asc)
  end
end
