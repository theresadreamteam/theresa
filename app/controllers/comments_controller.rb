class CommentsController < ApplicationController
  def create
    @walk = Walk.find(params[:walk_id])
    @comment = @walk.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to walk_path(@walk)
  end

  def destroy
    @walk = Walk.find(params[:walk_id])
    @comment = @walk.comments.find(params[:id])
    @comment.destroy
    redirect_to walk_path(@walk)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
