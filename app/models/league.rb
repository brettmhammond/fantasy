class League < ActiveRecord::Base
    has_many :fantasy_teams
    has_many :drafts
end
