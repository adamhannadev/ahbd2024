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
        partnering: Faker::Lorem::paragraph
    )
end
    

# Create some mock Steps.
6.times do
    Step.create(
        count: rand(1..3),
        foot: rand(2) == 1 ? "Left" : "Right",
        footwork: Footwork.find(rand(1..8)).name,
        foot_position: FootPosition.find(rand(1..9)).name,
        component: Component.find(rand(Component.first.id..Component.last.id))
    )
end

roles = ["Teacher", "Student", "Prospect"]

6.times do
    Contact.create(
        last_name: Faker::Lorem::word,
        first_name: Faker::Lorem::word,
        email: "adam.s.hanna@gmail.com",
        phone: Faker::PhoneNumber.phone_number,
        birthdate: Date.current,
        role: roles[rand(0..2)]
    )
end

students = Contact.where(role: "Student")
teachers = Contact.where(role: "Teacher")


def round_time(time)
    Time.at((time.to_f / 1800).floor * 1800)
end

status = ["Booked", "Cancelled", "Complete", "Paid"]
6.times do
    Lesson.create(
        lesson_time: round_time(Faker::Time.backward(days: 0, period: :afternoon)),
        plan: Faker::Lorem::sentence,
        status: status[rand(0..3)],
        student: students.first,
        teacher: teachers.first
    )
end