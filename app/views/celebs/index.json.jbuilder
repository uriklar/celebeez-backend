json.array!(@celebs) do |celeb|
  json.extract! celeb, :id, :first_name, :last_name
  json.url celeb_url(celeb, format: :json)
end
