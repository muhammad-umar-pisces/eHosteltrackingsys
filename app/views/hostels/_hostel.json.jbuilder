json.extract! hostel, :id, :hostel_name, :location, :price, :created_at, :updated_at
json.url hostel_url(hostel, format: :json)
