class Listing < ApplicationRecord
	belongs_to :user
	has_many :reservations, dependent: :destroy
	
	
  mount_uploader :image, AvatarUploader
  paginates_per 6
  max_paginates_per 6

  # scope :title, -> (title) { where title: title }
  scope :description, -> (argument) { where description: argument }
  scope :location, -> (location) { where location: location }

	def self.title(query)
    where("title ILIKE :title", title: "%#{query}%")
  end

end
