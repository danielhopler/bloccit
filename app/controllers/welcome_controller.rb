class WelcomeController < ApplicationController
  def index
    @popular_posts = Post.reorder('comments_count DESC').limit(4)
    @recent_comments = Comment.order('created_at DESC'). limit(3)
  end

  def about
  end
end
