class TestItemsController < ApplicationController
  
 def  new
   @test_mode=TestMode.find(params[:format])
   @test_item = @test_mode.test_items.new
 end

 def create
   @test_mode=TestMode.find(params[:test_item][:test_mode_id])
   @test_item=@test_mode.test_items.new(item_permit)
   
   if @test_item.save
     flash[:notice]='新增測試項目成功'
     redirect_to test_mode_path( @test_mode)
   else
     flash[:notice]='新增測試項目失敗'
     render :new
   end
 end

 def edit
  @project=Project.find(params[:format])
  @comment=Comment.new
  @test_item=TestItem.find(params[:id])
  @comments=@test_item.comments.order(created_at: :desc)
end



def update
  
  @project=Project.find(params[:test_item][:project_id])
  @test_mode=TestItem.find(params[:id])
  if @test_mode.update(item_permit)
    flash[:notice]="更新成功"
    redirect_to edit_test_item_path(@test_mode,@project)
  else
    flash[:notice]="更新失敗"
    render :edit
  end
end

 private

  def item_permit
    params.require(:test_item).permit(:test_name,:expected_date_of_delivery,:status)
  end

end
