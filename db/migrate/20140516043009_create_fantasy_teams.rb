class CreateFantasyTeams < ActiveRecord::Migration
  def change
    create_table :fantasy_teams do |t|
      t.string :name
      t.string :owner
      t.integer :league_id
      t.timestamps
    end
  end
end
