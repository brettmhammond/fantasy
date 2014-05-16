class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :max_amount
      t.integer :total_rounds

      t.timestamps
    end
  end
end
