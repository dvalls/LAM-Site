class HomeController < ApplicationController
  def index
    @feeds = Feed.all
    @carousels = Carousel.all
  end
end
