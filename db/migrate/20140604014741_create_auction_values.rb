class CreateAuctionValues < ActiveRecord::Migration
  def change
    create_table :auction_values do |t|
      t.references :player, index: true
      t.integer :year
      t.integer :min_price
      t.integer :max_price
      t.integer :avg_price

      t.timestamps
    end
  end
end
