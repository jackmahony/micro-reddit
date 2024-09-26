class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
     
    # Hard-coding the user_id to 1 for now
     @post.user_id = 2

    if @post.save
      redirect_to posts_path
    else
    render :new, status: :unprocessable_entity
    end
  end

  private
    def post_params
       params.require(:post).permit(:title, :body)
    end
end
