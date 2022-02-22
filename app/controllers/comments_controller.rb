class CommentsController < ApplicationController

  def new
    comment = Comment.create! comment_params
    
    if comment.persisted?
      render json: comment, include: {user: {only: [:name, :image]}}
    else
      render json: {error: 'Could not create comment'}, status: 422
    end

  end

  private

  def comment_params
    params.require(:comment)
    .permit(
      :user_id, 
      :event_id, 
      :text 
    )
    
  end


end
