class Specialty < ApplicationRecord
	has_many :degree_of_specialties
  has_many :doctors, through: :degree_of_specialties
end
