class LikeController < ApplicationController
  def processing
    target = Post.find(params[:post_id].to_i)
    target.update(like: target.like+1)
    table = UserPost.where(user: current_user, post: target).take
    if table
      table.update(liked: true)
    else
      UserPost.create(user: current_user, post: target, liked: true, owned: false)
    end
    
    respond_to do |format|
      format.json { render json: target }
    end
  end
  
  def deprocessing
    target = Post.find(params[:post_id].to_i)
    target.update(like: target.like-1)
    table = UserPost.where(user: current_user, post: target).take
    table.update(liked: false)
    
    respond_to do |format|
      format.json { render json: target }
    end
  end
  
end
