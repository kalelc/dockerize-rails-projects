json.array!(@breeds) do |breed|
  json.extract! breed, :id, :name, :size, :weight, :country, :url_info, :description
  json.url breed_url(breed, format: :json)
end
