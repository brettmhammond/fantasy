json.array!(@players) do |player|
  json.extract! player, :id, :name, :position_id, :team_id, :headshot
  json.url player_url(player, format: :json)
end
