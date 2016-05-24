json.array!(@students_reserveds) do |students_reserved|
  json.extract! students_reserved, :id
  json.url students_reserved_url(students_reserved, format: :json)
end
