class CommentsController < ApplicationController
  def create
    @walk = Walk.find(params[:walk_id])
    @comment = @walk.comments.create(comment_params)
    redirect_to walk_path(@walk)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
