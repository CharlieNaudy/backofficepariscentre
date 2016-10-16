json.extract! meeting, :id, :id_meeting, :latitude, :longitude, :participants, :date, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)