# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

50.each do |t|

      Project.creae(receive_date: Faker::Date.in_date_period)
      t.date "receive_date"
      t.string "project_number"
      t.string "customer"
      t.string "product_number"
      t.string "product_name"
      t.string "salesman"
      t.string "PM"

end