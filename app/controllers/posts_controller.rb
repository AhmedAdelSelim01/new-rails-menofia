class PostsController < ApplicationController
  # your code goes here

  #endpoint GET /posts
  def index
    @posts = Post.all
  end
 #endpoint GEt /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # endpoint GET /posts/new
  def new
    @post = Post.new
  end
  #endpoint POST /posts
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end 
  #endpoint GET /posts/:id/edit
  def edit
    @post = Post.find(params[:id])
  end

  #endpoint PATCH/PUT /posts/:id
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  # endpoint DELETE /posts/:id
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end


end
