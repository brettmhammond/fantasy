class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.references :league, index: true
      t.integer :max_amount
      t.integer :total_rounds

      t.timestamps
    end
  end
end
