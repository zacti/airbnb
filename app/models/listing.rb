class Listing < ApplicationRecord
	belongs_to :user
	has_many :reservations
  mount_uploader :image, AvatarUploader
  paginates_per 6
  max_paginates_per 6

end
