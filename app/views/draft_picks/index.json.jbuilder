json.array!(@draft_picks) do |draft_pick|
  json.extract! draft_pick, :id, :draft_id, :fantasy_team_id, :player_id, :price, :round
  json.url draft_pick_url(draft_pick, format: :json)
end
