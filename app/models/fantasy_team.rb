class FantasyTeam < ActiveRecord::Base
    belongs_to :league
    has_many :draft_picks
    has_many :draft_fantasy_teams
end
