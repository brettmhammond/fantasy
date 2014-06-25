class AddDraftFantasyTeamsTable < ActiveRecord::Migration
  def change
    create_table :draft_fantasy_teams do |t|
      t.references :draft, index: true
      t.references :fantasy_team, index: true
      t.integer :position
    end

  end
end
