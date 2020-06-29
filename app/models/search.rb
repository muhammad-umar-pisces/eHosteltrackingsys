class Search < ApplicationRecord
	def search_hostels
		hostels = Hostel.all
		hostels = hostels.where(["name LIKE ?", "%#{name}%"]) if name.present?
		hostels = hostels.where(["location LIKE ?", "%#{location}%"]) if location.present?
		hostels = hostels.where(["price >= ?", min_price]) if min_price.present?
		hostels = hostels.where(["price <= ?", max_price]) if max_price.present?
		hostels = hostels.where(["hostel_type LIKE ?", "%#{hostel_type}%"]) if hostel_type.present?
		return hostels

	end
end
