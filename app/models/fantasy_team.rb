class FantasyTeam < ActiveRecord::Base
    belongs_to :league
    has_many :draft_picks


end
