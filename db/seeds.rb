# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 1..10
    p = Person.create(
        name: Faker::Name.name,
        age: rand(18..65),
        hair_color: rand(0..3)
    )
    p "Person - Name: #{Person.last.name}. Age: #{Person.last.age}. Hair color: #{Person.last.hair_color}."
end

for i in 1..5
    Dog.create(
        name: Faker::Dessert.topping,
        person_id: rand(1..10)
    )
    p "Dog - Name: #{Dog.last.name}."
end

for i in 1..5
    Interest.create(
        name: Faker::Games::WorldOfWarcraft.quote,
        person_id: rand(1..10)
    )
    p "Interest - Name: #{Interest.last.name}."
end
