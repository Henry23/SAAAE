json.array!(@hourdate_reserveds) do |hourdate_reserved|
  json.extract! hourdate_reserved, :id, :hora, :fecha
  json.url hourdate_reserved_url(hourdate_reserved, format: :json)
end
