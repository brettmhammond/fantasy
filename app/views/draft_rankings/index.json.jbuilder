json.array!(@draft_rankings) do |draft_ranking|
  json.extract! draft_ranking, :id, :player_id, :year, :ffn_rank, :position_rank, :overall_rank
  json.url draft_ranking_url(draft_ranking, format: :json)
end
