class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.integer :value
      t.integer :product_id

      t.timestamps
    end
  end
end
