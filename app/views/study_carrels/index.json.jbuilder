json.array!(@study_carrels) do |study_carrel|
  json.extract! study_carrel, :id, :max_number, :code
  json.url study_carrel_url(study_carrel, format: :json)
end
