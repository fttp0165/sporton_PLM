require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "建立專案" do
    context '如果專案建立成功時...' do
      it "存入資料" ,projects: true do
        new_project=FactoryBot.build(:project)
        project=Project.new
        project.receive_date=new_project.receive_date
        project.project_number=new_project.project_number
        project.customer=new_project.customer
        project.product_name=new_project.product_name
        project.salesman=new_project.salesman
        project.PM=new_project.PM
        expect(Project.last.receive_date).to project.receive_date
      end
    end
  end
end




