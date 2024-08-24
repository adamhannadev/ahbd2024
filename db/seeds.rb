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

# Create all the basic footworks.
fw = [
    "Ball",
    "Ball Flat",
    "Flat",
    "Heel",
    "Toe",
    "Toe Heel",
    "Inside Edge",
    "Inside Edge of Ball of Foot"
]
fw.each do |f|
    Footwork.create(name: f)
end

# Create all the basic foot positions.
fp = [
    "Back",
    "Forward",
    "Side",
    "Close",
    "Forward and Slightly Side",
    "Side and Slightly Forward",
    "Diagonally Forward",
    "Across",
    "Behind in 5th Position"
]
fp.each do |f|
    FootPosition.create(name: f)
end

# Create some mock Steps.
6.times do
    Step.create(
        count: rand(1..3),
        foot: rand(2) == 1 ? "Left" : "Right",
        footwork: Footwork.find(rand(1..8)),
        foot_position: FootPosition.find(rand(1..9))
    )
end

# Create some mock Components.

ls = [
    "Introductory",
    "Associate Bronze",
    "Full Bronze",
    "Associate Silver",
    "Full Silver",
    "Associate Gold",
    "Full Gold",
    "Open"
]

dnc = [
    "Salsa",
    "Bachata",
    "Kizomba",
    "West Coast Swing"
]

6.times do
    Component.create(
        name: Faker::Lorem::word,
        role: rand(2) == 1 ? "Leader" : "Follower",
        level: ls[rand(7)],
        dance: dnc[rand(3)],
        steps: [
            Step.first,
            Step.second,
            Step.third
        ]
    )
end
    