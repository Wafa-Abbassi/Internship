# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employee.destroy_all
Employee.create!([{NIC:"12654562",
                   firstName:"Wafa",
                   lastName:"Abbassi",
                   login:"abbassiiwafa04@gmail.com",
                   pwd:"not your buisness"},
                   {
                     NIC:"00000000",
                     firstName:"Hajer",
                     lastName:"Lakdhar",
                     login:"hajerlakhdhar@gmail.com",
                     pwd:"not your buisness too"
                   },
                   {
                     NIC:"11111111",
                     firstName:"Sami",
                     lastName:"Dghim",
                     login:"samidghim@gmail.com",
                     pwd:"i'm the boss"
                   },
                 ])
Request.create(reqNum:"", reqDate:"", status:"", description:"i just need a vacation, GOD HELP ME")

100.times do
Absence.create!(
  comment: Faker::WorldOfWarcraft.quote
)
end
