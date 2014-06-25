class DraftFantasyTeam < ActiveRecord::Base
  belongs_to :draft
  belongs_to :fantasy_team
end