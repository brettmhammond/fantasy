json.array!(@auction_values) do |auction_value|
  json.extract! auction_value, :id, :player_id, :year, :min_price, :max_price, :avg_price
  json.url auction_value_url(auction_value, format: :json)
end
