json.array!(@drafts) do |draft|
  json.extract! draft, :id, :league_id
  json.url draft_url(draft, format: :json)
end
