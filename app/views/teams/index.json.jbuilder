json.array!(@teams) do |team|
  json.extract! team, :id, :name, :short_name, :logo
  json.url team_url(team, format: :json)
end
