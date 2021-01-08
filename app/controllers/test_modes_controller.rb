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

  def update
    @project=Project.find(params[:test_mode][:project_id])
    @test_mode=TestMode.find(params[:id])
    if @test_mode.update(test_primet)
      flash[:notice]="更新成功"
      redirect_to edit_test_mode_path(@test_mode,@project)
    else
      flash[:notice]="更新失敗"
      render :edit
    end
  end

  def edit

    @comment=Comment.new
    @project=Project.find(project_id_primet)
    if params.include?(:test_mode_id)
      @test_mode=TestMode.find(test_mode_primet)
    else
      @test_mode=TestMode.find(params[:id])
    end  
    @comments=@test_mode.comments.order(created_at: :desc)
    @test_item_list=@test_mode.test_items
    @page_id={:project_id=>@project.id,:test_mode_id=> @test_mode.id}
  end

  def show
    @test_mode=TestMode.find(params[:id])
    @test_item=@test_mode.test_items
  end

private

def test_primet
  params.require(:test_mode).permit(:law_name,:expected_date_of_delivery)
end
def project_id_primet
  params.require(:project_id)
end
def test_mode_primet
  params.require(:test_mode_id)
end
      
end




