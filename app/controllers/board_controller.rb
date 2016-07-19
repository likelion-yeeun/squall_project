class BoardController < ApplicationController
  def index
    if user_signed_in?
    else
      redirect_to '/users/sign_in'
    end
    
    @post = Post.all
  end
  def create
    @post = Post.new(title: params[:title], content: params[:content])
    @post.save
    redirect_to :back
  end

  def new
  end

  def edit
  end

  def destroy
  end
  
  def comment_create
    @comment = Comment.new(post_id: params[:post_id], content: params[:content])
    @comment.save
    redirect_to :back
  end
  def search
  end
  
  def search_view
    @search_post = Post.search(params[:content])
    
  end
end
