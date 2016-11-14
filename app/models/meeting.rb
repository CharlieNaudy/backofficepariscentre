class Meeting < ApplicationRecord
	has_many :users

#attr_accessor :users_id

  def calcul_barycentre
    if self.users.present?
    	a = Array.new
    	self.users.each do |user|
      		a.push(user)
    	end
    	center = Geocoder::Calculations.geographic_center(a)
    self.address = nil
    self.latitude = center[0]
    self.longitude = center[1]
  	end
  end

  def map_url
    "http://maps.googleapis.com/maps/api/staticmap?center=#{self.latitude},#{self.longitude}&markers=#{self.latitude},#{self.longitude}&zoom=13&size=640x400&key=AIzaSyA3ClUuV34fLioaJn9jbt0emQXtjW-ciCQ"
  end

	before_save :calcul_barycentre
	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	before_save :geocode#, if: ->(obj){ obj.address.present? and obj.address_changed? }
	before_save :reverse_geocode#, unless: ->(obj) { obj.address.present? },
                  # if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
end
