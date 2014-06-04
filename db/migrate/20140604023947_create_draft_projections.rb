class CreateDraftProjections < ActiveRecord::Migration
  def change
    create_table :draft_projections do |t|
      t.references :player, index: true
      t.integer :year
      t.integer :completions
      t.integer :attempts
      t.integer :passing_yards
      t.integer :passing_td
      t.integer :passing_int
      t.integer :rush_yards
      t.integer :rush_td
      t.integer :fantasy_points

      t.timestamps
    end
  end
end
