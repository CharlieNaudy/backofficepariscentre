json.extract! user, :id, :last_name, :first_name, :address, :latitude, :longitude, :email, :meeting, :meeting_id, :created_at, :updated_at
json.url user_url(user, format: :json)