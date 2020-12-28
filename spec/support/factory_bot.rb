require "factory_bot_rails"
require 'faker'
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

FactoryBot.define do
  factory :project do
      name { Faker::Name.name }
      receive_date {Faker::Date.in_date_period}
      project_number {Faker::Device.serial}
      customer {Faker::Name.name}
      product_number {Faker::Device.serial}
      product_name {Faker::Device.model_name}
      salesman {Faker::Name.name}
      PM {Faker::Name.name}
  end
end


