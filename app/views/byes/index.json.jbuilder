json.array!(@byes) do |bye|
  json.extract! bye, :id, :team_id, :week
  json.url bye_url(bye, format: :json)
end
