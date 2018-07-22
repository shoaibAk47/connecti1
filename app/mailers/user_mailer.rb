class UserMailer < ApplicationMailer

	def new_comment(comment_id)
        @comment=Comment.find(comment_id)
        abc=@comment.post.user.email
        mail(
               to: 'arpansac@gmail.com',
               subject: 'Somebody has commented on your post'
        	)
	end
end
