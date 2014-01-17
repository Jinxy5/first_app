class Micropost < ActiveRecord::Base
	belongs_to :user
	
	validates :content, length: { maximum: 140, minimum: 1, message: "Your post must be under 140 character's long!"}
end
