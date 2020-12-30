class CommentsController < ApplicationController
  
  def create
     @project=Project.find(project_permit)
     @comment=@project.comments.new(comment_permit)
     @comment.user = current_user
    
     if @comment.save
      
     else
      render 'project/edit',@project
     end

  end

  private
  def comment_permit
    params.require(:comment).permit(:content)
  end
  def project_permit
    params.require(:format)
  end
end
