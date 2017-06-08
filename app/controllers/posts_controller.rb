class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: 'DESC')
  end

  def show
    @post = Post.find params[:id]
    @posts = Post.all.order(id: 'DESC')
  end

  def edit
  end
end
