class CommentsController < ApplicationController
	
	#before_action :correct_user, only: :destroy
  
	def create 
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

	private def comment_params
		params.require(:comment).permit(:username, :body)
	end
end


#future implementation of only the correct author of the comment being
#able to
		
=begin
def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    		end
    	end
    	
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
=end