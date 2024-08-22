# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
levels = ['Pre-Bronze','Intermediate Bronze','Full Bronze', 'Pre-Silver', 'Intermediate Silver', 'Full Silver', 'Pre-Gold', 'Intermediate Gold', 'Full Gold', 'Open']
dances = ['Salsa', 'Bachata', 'West Coast Swing', 'Kizomba']

6.times do 
    Component.create(
    name: Faker::Creature::Animal.name.capitalize,
    role: Faker::Boolean.boolean ? 'Leader' : 'Follower',
    level: levels[Faker::Number.within(range: 0..9)],
    dance: dances[Faker::Number.within(range: 0..3)],
    footwork: Faker::Lorem.paragraph,
    timing: Faker::Lorem.sentence,
    partnering: Faker::Lorem.paragraph
 )
end