class Meeting < ApplicationRecord
	has_many :users

	geocoded_by :address
	after_validation :geocode#, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
