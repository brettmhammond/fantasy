json.array!(@draft_projections) do |draft_projection|
  json.extract! draft_projection, :id, :player_id, :year, :completions, :attempts, :passing_yards, :passing_td, :passing_int, :rush_yards, :rush_td, :fantasy_points
  json.url draft_projection_url(draft_projection, format: :json)
end
