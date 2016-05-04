json.array!(@hours_reserveds) do |hours_reserved|
  json.extract! hours_reserved, :id, :hour
  json.url hours_reserved_url(hours_reserved, format: :json)
end
