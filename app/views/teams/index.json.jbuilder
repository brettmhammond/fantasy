json.array!(@teams) do |team|
  json.extract! team, :id, :city, :name, :key, :logo
  json.url team_url(team, format: :json)
end
