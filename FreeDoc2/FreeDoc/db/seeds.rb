# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
DegreeOfSpecialty.destroy_all

specialties_list = [
  
  "Psychiatrist",
  "Dermatologist",
  "Generalist",
  "Podiatrist",
  "Neurologist",
  "Ophtalmologist",
  "Radiologist",
  "Orthodontist",
  "Dentist",
  "Surgeon",
  "Urgentist",
  "Gynecologist",
  "Physiotherapist"
]


20.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
  appointment = Appointment.create!(date: Faker::Date.forward(days: 200), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, city_id: City.all.sample.id)
  level = LevelOfSpecialty.create!(level: level_list.sample, doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end

degree_list = [
  "Graduated",
  "Qualified",
  "Certificated"
]

specialties_list.each do |x|
  specialty = Specialty.create!(name: x)
end