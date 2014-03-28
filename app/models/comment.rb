class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
	# attr_accessible :body, :post

	validates :body, length: { minimum: 5 }, presence: true
	validates :user, presence: true

end
