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


 private

  def item_permit
    params.require(:test_item).permit(:test_name,:expected_date_of_delivery,:status)
  end

end
