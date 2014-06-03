class DraftPick < ActiveRecord::Base
  belongs_to :draft
  belongs_to :fantasy_team
  belongs_to :player
end
