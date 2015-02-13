json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :starting_bid, :celeb_id
  json.url item_url(item, format: :json)
end
