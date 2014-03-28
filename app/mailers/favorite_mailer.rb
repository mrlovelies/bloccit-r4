class FavoriteMailer < ActionMailer::Base
  default from: "favorites@psdoff.com"

  def new_comment(user, post, comment)
  	@user = user
  	@post = post
  	@comment = comment

  	# New headers
  	headers["Message-ID"] = "<comments/#{@comment.id}@psdoff-bloccit-r4.com>"
  	headers["In-Reply-To"] = "<post/#{@post.id}@psdoff-bloccit-r4.com>"
  	headers["References"] = "<post/#{@post.id}@psdoff-bloccit-r4.com>"

  	mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
