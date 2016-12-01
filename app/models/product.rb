class Product < ApplicationRecord
  belongs_to :user
  has_many   :bids
  validates  :min_bid, presence: true
end
