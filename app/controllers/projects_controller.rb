class ProjectsController < ApplicationController
  def index
    @projects=Project.page(params[:page]).per(50).order(id: :desc)
  end

  def new
    @project=Project.new
    @current_time=Time.now.strftime('%F')  
  end

  def create
    @project=Project.new(project_permit)
    if @project.save
      flash[:notice]="開案成功"
      redirect_to root_path
    else
      flash[:notice]="開案失敗"
      render :new
    end
  end

  def edit
    @project=Project.find(params[:id])
    @test_mode_list=@project.test_modes
  end

  def update
    @project=Project.find(params[:id])
    if @project.update(project_permit)
      flash[:notice]="更新成功"
      redirect_to root_path
    else
      render :edit
    end
  end


  def show
    @project=Project.find(params[:id])
  end

  private
  def project_permit
    params.require(:project).permit(:receive_date,:project_number,:product_number,:product_name,:salesman,:customer,:PM)
  end
end



