json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :ffn_game_id, :week, :date, :away_team_id, :home_team_id, :time, :broadcaster
  json.url schedule_url(schedule, format: :json)
end
