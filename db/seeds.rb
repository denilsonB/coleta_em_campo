# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.find_or_create_by!(email:"testuser@mail.com") do |user|
    user.name = "Test User"
    user.password = "Testuser123"
    user.password_confirmation = "Testuser123"
    user.cpf = "46956296071"
end

Visit.find_or_create_by!(date:Date.new(2021,06,25)) do |visit|
    visit.created_at = Date.today
    visit.checkin_at = DateTime.new(2021,06,14,14,0,0)
    visit.checkout_at = DateTime.new(2021,06,14,16,0,0)
    visit.user_id = 8
end

Formulary.find_or_create_by!(name:"Formulary Test")

Question.find_or_create_by(name:"Question 1") do |question|
    question.formulary_id = 19
end

Answer.find_or_create_by(content:"Test Answer") do |answer|
    answer.formulary_id = 1
    answer.question_id = 1
    answer.visit_id = 1
end