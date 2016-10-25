class User < ApplicationRecord
	belongs_to :meeting

	geocoded_by :address
	after_validation :geocode#, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
