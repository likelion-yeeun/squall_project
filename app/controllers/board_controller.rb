class BoardController < ApplicationController
  def index
    if user_signed_in?
    else
      redirect_to '/users/sign_in'
    end

    @post = Post.all.reverse
  end
  def create
    post = Post.new(content: params[:content])

    if post.save
      uploader = ImageUploader.new
      file = params[:pic]
      uploader.store!(file)
      post.image_url = uploader.url
      post.save
      redirect_to "/"
    else
      flash[:notice] = "내용을 입력해주세요."
      redirect_to "/"
   end
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def comment_create
    @comment = Comment.new(post_id: params[:id_of_post], content: params[:content])
    @comment.save
    redirect_to :back
  end
  def search
  end

  def search_view
    @search_post = Post.search(params[:content])
  end
end
