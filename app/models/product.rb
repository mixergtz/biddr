class Product < ApplicationRecord
  has_many :bids, dependent: :destroy
end
