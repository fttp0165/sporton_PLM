require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "建立專案" do
    context '如果專案建立成功時...' do
      it "存入資料" ,projects: true do
        new_project=FactoryBot.build(:project)
        # project=Project.new
        # project.receive_date=new_project.receive_date
        expect(new_project).to be_valid
      end
    end
  end
end
# receive_date Faker::Date.in_date_period
# project_number Faker::Device.serial
# customer Faker::Name.name 
# product_number Faker::Device.serial
# product_name Faker::Device.model_name 
# salesman Faker::Name.name
# PM Faker::Name.name