class BidsController < ApplicationController
  before_action :set_product

  # GET /bids
  def index
    @bids = @product.bids.highest_first
  end

  # GET /bids/new
  def new
    @bid = @product.bids.build
  end

  # POST /bids
  def create
    @bid = @product.bids.build(bid_params)

    if @bid.save
      ActionCable.server.broadcast "bids",
        product_id: @product.id,
        product_name: @product.name,
        value: @bid.value

      redirect_to product_bids_path(@product), notice: 'Bid was successfully created.'
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:product_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:value)
    end
end
