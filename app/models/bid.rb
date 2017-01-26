class Bid < ApplicationRecord
  belongs_to :product

  validates :value, presence: true, numericality: { greater_than: 0 }
  validate :is_highest_bid, if: :value?

  scope :highest_first, -> { order(value: :desc) }
  scope :highest_by_product, -> (product_id) { where(product_id: product_id).highest_first }


  def is_highest_bid
    highest_bid = self.class.highest_by_product(product_id).first
    if highest_bid && value <= highest_bid.value
      errors.add(:value, "should be higher than the highest bid: #{highest_bid.value}")
    end
  end

end
