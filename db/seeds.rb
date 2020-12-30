# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

(1..3001).each do |t|

      faker_data={
            receive_date: Faker::Date.in_date_period,
            project_number: Faker::Device.serial,
            customer: Faker::Device.manufacturer ,
            product_number:Faker::Device.model_name ,
            product_name:Faker::Device.model_name ,
            salesman:Faker::Name.name ,
            PM:Faker::Name.name 
      }

      Project.create(faker_data)
end