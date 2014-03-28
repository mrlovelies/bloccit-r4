class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
	# attr_accessible :body, :post

	validates :body, length: { minimum: 5 }, presence: true
	validates :user, presence: true

	after_create :send_favorite_emails

	private

	def send_favorite_emails
		self.post.favorites.each do |favorite|
			FavoriteMailer.new_comment(favorite.user, self.post, self).deliver
		end
	end
end
