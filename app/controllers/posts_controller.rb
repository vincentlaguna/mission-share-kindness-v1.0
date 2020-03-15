class PostsController < ApplicationController
	
	#before_action :logged_in_user, only: [:edit, :update, :destroy]
  #before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:edit, :update, :destroy]
  
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		 if(@post.save)
			redirect_to @post
		else 
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])	
	end

	def update
		@post = Post.find(params[:id])

		if(@post.update(post_params))
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
			
		redirect_to posts_path
	end

	private def post_params
		params.require(:post).permit(:title, :body)
	end
	
=begin	 def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in"
        redirect_to login_url
      end
      
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
=end
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
