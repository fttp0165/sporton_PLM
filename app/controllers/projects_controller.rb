class ProjectsController < ApplicationController
  def index
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


  private

  def project_permit
    params.require(:project).permit(:receive_date,:project_number,:product_number,:product_name,:salesman,:customer,:PM)
  end
end



