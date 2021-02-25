# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

DptStore.destroy_all
Item.destroy_all

10.times do
  x = Faker::Verb.simple_present 
  y = Faker::Verb.ing_form 
  z = Faker::Verb.base
  d = DptStore.create(name: "#{x} #{y} #{z}")
  4.times do
    #here we are using d which equals an instance of dpt_store, it has an ID
    d.items.create(name: Faker::Verb.simple_present, body: Faker::Quote.famous_last_words)

    Item.create(dpt_store_id: d.id, name: Faker::Verb.simple_present, body: Faker::Quote.famous_last_words)
  end
end
puts "seeded #{DptStore.all.size} DptStore"
puts "first DptStore name: #{DptStore.first.name}"
puts "seeded #{Item.all.size} Item"