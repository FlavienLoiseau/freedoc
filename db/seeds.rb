# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

speciality_list = ["Anatomo-pathologie", "Anesthésie-réanimation", "Biologie médicale", "Cardiologie", "Chirurgie", "Chirurgie plastique, chirurgie reconstructrice et chirurgie esthétique", "Dermatologie-Vénérologie", "Gastroentérologie", "Gériatrie", "Gynécologie-obstétrique", "Médecine légale", "Gestion des données de santé", "Médecine d'expertise et d'évaluation du dommage corporel", "Médecine du travail", "Médecine générale", "Médecine aigue", "Médecine d’urgence", "Médecine interne", "Médecine nucléaire", "Médecine physique et réadaptation", "Neurochirurgie", "Neurologie", "Ophtalmologie", "Chirurgie orthopédique", "Oncologie", "Oto-rhino-laryngologie", "Pédiatrie", "Pneumologie", "Psychiatrie adulte", "Psychiatrie infanto-juvénile", "Radiothérapie", "Radiologie", "Rhumatologie", "Stomatologie", "Urologie"]

100.times do
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do
  Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: speciality_list.sample, zip_code: Faker::Address.zip_code)
end

200.times do
  Appointment.create!(date: Faker::Date.forward(days: 365), patient_id: rand(1..100), doctor_id: rand(1..20))
end

10.times do
  City.create!(city: Faker::Nation.capital_city)
end