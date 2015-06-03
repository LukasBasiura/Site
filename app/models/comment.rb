class Comment < ActiveRecord::Base
	
	validates :content, presence: true
	belongs_to :user
	belongs_to :pin
	validates :user_id, presence: true
	#validates :pin_id,  presence: true
	
end
