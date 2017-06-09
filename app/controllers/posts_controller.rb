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
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    post = @post.update_attributes!(post_params)
    respond_to do |format|
      if post 
        format.html {redirect_to @post, notice: 'Updated Post Successfully' }
        format.json { render json: @post, status: :ok }                                 
        format.js
      else
        format.html {redirect_to :edit, notice: post.errors }
        format.json { render json: 'Could not update at this time' }
        format.js

      end
    end
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy!
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
