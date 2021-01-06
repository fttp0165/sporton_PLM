class CommentsController < ApplicationController
  
  def create

     case 
     when params.include?(:project_id)
      @type_belong=Project.find(type_permit)
     when params.include?(:test_mode_id)
      @type_belong=TestMode.find(type_permit)
     when params.include?(:test_item_id)
      @type_belong=TestItem.find(type_permit)
     else
      render 'project/edit',@project
     end
     @comment=@type_belong.comments.new(comment_permit)
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
  def type_permit
    case 
    when params.include?(:project_id)
      params.require(:project_id)
    when params.include?(:test_mode_id)
      params.require(:test_mode_id)
    when params.include?(:test_item_id)
      params.require(:test_item_id)
    else
      render 'project/edit',@project
    end
    
  end
end
