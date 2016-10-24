class Meeting < ApplicationRecord
	has_many :users
	#reverse_geocoded_by :latitude, :longitude
	#after_validation :reverse_geocode
end
