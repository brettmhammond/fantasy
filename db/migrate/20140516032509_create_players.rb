class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :name
      t.integer :ffn_player_id
      t.integer :position_id
      t.integer :team_id
      t.string :completions
      t.string :attempts
      t.string :passing_yards
      t.string :passing_td
      t.string :passing_int
      t.string :rush_yards
      t.string :rush_td
      t.string :completions
      t.string :fantasy_points
      t.boolean :active
      t.string :jersey
      t.string :height
      t.string :weight
      t.date :dob
      t.string :college
    end
  end
end
