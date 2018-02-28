class Listing < ApplicationRecord
	belongs_to :user
	has_many :reservations, dependent: :destroy
	
	
  mount_uploader :image, AvatarUploader
  paginates_per 6
  max_paginates_per 6

  scope :title, -> (title) { where title: title }
  scope :description, -> (description) { where description: description }
  scope :location, -> (location) { where location: location }
  # scope :starts_with, -> (location) { where("location like ?", "#{location}%")}
# scope :title, ->(title) { where :title title}
# scope :description, ->(title) { where :description title}
# scope :location, ->(title) { where :location title}
end
