class PagesController < ApplicationController
  def index
    @current_bids = Bid.includes(:product).all
  end
end
