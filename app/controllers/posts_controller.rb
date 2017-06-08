class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: 'DESC')
  end

  def show
    @post = Post.find params[:id]
    @posts = Post.all.order(id: 'DESC')
  end

  def new
    @post = Post.new
  end
  
  def create
    respond_to do |format|
      @post = Post.new(post_params)
      if @post.save!
        format.html { redirect_to @post, notice: 'Article created successfully' }
        format.js
        format.json { render json: @post, status: :ok }
      else
        format.html { render :new, error: @post.errors}
        format.js
        format.json { render json: @post.errors}
      end
    end
  end
  
  def edit
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
