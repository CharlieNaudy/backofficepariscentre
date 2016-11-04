json.extract! meeting, :id, :name, :address, :latitude, :longitude, :date, :users, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)