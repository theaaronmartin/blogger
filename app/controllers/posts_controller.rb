class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new(posts_params)

    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  private
    def posts_params
      params.require(:post).permit(:title, :body)
    end
end
