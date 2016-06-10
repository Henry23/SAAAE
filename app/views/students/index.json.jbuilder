json.array!(@students) do |student|
  json.extract! student, :id, :account_number, :name, :email, :rfid_id
  json.url student_url(student, format: :json)
end
