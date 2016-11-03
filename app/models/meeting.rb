class Meeting < ApplicationRecord
	has_many :users



  def self.calcul_barycentre
    if self.users.present?
    	a = Array.new
    	self.users.each do |user|
      		a.push(user)
    	end
    self.latitude = addressGeocoder::Calculations.geographic_center(a)[1]
    self.longitude = addressGeocoder::Calculations.geographic_center(a)[2]
  	end
  end

	#before_save self.calcul_barycentre
	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
	after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
end
