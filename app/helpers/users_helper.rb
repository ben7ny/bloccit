module UsersHelper
  def comments_title(user)
    if user.comments.any?
      "Comments"
    else
      "#{user.name} has not submitted any comments yet."
    end
  end

  def posts_title(user)
    if user.posts.any?
      "Posts"
    else
      "#{user.name} has not submitted any posts yet."
    end
  end


end
