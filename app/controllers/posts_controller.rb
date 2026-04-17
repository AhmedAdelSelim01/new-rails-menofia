class PostsController < ApplicationController
  # your code goes here


  def index
    @posts = Post.all
  end

end
