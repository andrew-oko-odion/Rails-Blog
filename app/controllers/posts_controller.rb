class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: 'DESC')
  end

  def show
  end

  def edit
  end
end
