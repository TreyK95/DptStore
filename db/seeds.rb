# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

DptStore.destroy_all

10.times do
  x = Faker::Verb.simple_present 
  y = Faker::Verb.ing_form 
  z = Faker::Verb.base
  DptStore.create(name: "#{x} #{y} #{z}")
end
puts "seeded #{DptStore.all.size} DptStore"
puts "first DptStore name: #{DptStore.first.name}"