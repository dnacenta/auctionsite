class AddMinBidToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :min_bid, :float
  end
end
