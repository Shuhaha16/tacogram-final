class PostsController < ApplicationController

    def index
      @posts = Post.all
    end
  
    def new
      @post = Post.new
    end
  
    def create
      if @current_user
        @post = Post.new(params["post"])
        @post.user_id = @current_user.id
        @post.save
      else
        flash[:notice] = "Login first."
      end
      redirect_to "/posts"
    end
  
  end