class CreateDraftPicks < ActiveRecord::Migration
  def change
    create_table :draft_picks do |t|
      t.references :draft, index: true
      t.references :fantasy_team, index: true
      t.references :player, index: true
      t.integer :price
      t.integer :round

      t.timestamps
    end
  end
end
