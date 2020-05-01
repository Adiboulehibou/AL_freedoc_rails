class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
  has_many :degree_of_specialties
  has_many :specialties, through: :degree_of_specialties
end
