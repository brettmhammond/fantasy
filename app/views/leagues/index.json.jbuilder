json.array!(@leagues) do |league|
  json.extract! league, :id, :name, :total_rounds
  json.url league_url(league, format: :json)
end
