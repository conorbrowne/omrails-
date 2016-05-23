class Pin < ActiveRecord::Base
	validates :description, presence: true
	has_attached_file :image, styles: { medium: "320x240>"}
	validates_attachment :image, presence: true, size: { less_than: 5.megabytes },
	content_type: {content_type: ["image/jpeg", "image/jpg", "image/png", "image/gif"] }
	
end
