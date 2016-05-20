json.array!(@hour_reserveds) do |hour_reserved|
  json.extract! hour_reserved, :id
  json.url hour_reserved_url(hour_reserved, format: :json)
end
