json.array!(@students) do |student|
  json.extract! student, :id, :account_number, :name
  json.url student_url(student, format: :json)
end
