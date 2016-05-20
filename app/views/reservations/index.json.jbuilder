json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :study_carrel_id, :student_id, :reserved_day
  json.url reservation_url(reservation, format: :json)
end
