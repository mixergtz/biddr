class AddFieldsToBid < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :bidder_name, :string
    add_column :bids, :winner, :boolean
  end
end
