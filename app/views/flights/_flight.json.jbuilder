json.extract! flight, :id, :departing, :arriving, :date, :time, :price, :created_at, :updated_at
json.url flight_url(flight, format: :json)
