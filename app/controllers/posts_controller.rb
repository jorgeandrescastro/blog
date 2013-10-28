class PostsController < ApplicationController

  before_filter :find_post, only: [:edit, :destroy, :update, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def destroy
    @post.destroy

    redirect_to posts_path
  end
   
  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else 
      render 'new'
    end
  end

  def show
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end

    def find_post
      @post = Post.find(params[:id])
    end

end
