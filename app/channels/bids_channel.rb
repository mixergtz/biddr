class BidsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "bids"
  end
end
