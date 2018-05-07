class FavoriteMailer < ApplicationMailer
  default from: "hopler.daniel@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@protected-brushlands-54332.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@protected-brushlands-54332.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@protected-brushlands-54332.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
