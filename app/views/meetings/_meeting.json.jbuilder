json.extract! meeting, :id, :nom, :latitude, :longitude, :participants, :date, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)