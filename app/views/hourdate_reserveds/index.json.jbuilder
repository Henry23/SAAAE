json.array!(@hourdate_reserveds) do |hourdate_reserved|
  json.extract! hourdate_reserved, :id, :hora, :study_carrel_id
  json.url hourdate_reserved_url(hourdate_reserved, format: :json)
end
