class TestModesController < ApplicationController
  def  new
    @project=Project.find(params[:format])
    @test_mode=TestMode.new
  end

  def  create
    @project=Project.find(params[:test_mode][:project_id])
    @test_mode=@project.test_modes.new(test_primet)
     if @test_mode.save
       flash[:notice]="建立成功"
       redirect_to  edit_project_path(@project)
     else
       flash[:notice]="建立失敗"
       render :new
     end
  end

  def edit
    @project=Project.find(params[:format])
    @test_mode=TestMode.find(params[:id])
    @test_item=@test_mode.test_items
  end

  def show
    @test_mode=TestMode.find(params[:id])
    @test_item=@test_mode.test_items
  end

private

def test_primet
  params.require(:test_mode).permit(:law_name,:expected_date_of_delivery)
      
end
      
end




