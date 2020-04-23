class Hostel < ApplicationRecord
	belongs_to	:user
	has_many_attached :images
	def thumbnail input
		return self.images[input].variant(resize: '300×300!').processed
	end
end