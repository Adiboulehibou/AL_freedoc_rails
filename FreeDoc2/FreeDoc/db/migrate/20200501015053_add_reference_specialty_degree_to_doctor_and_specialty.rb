class AddReferenceSpecialtyDegreeToDoctorAndSpecialty < ActiveRecord::Migration[5.2]
  def change
    add_reference :degree_of_specialties, :specialty, foreign_key: true
    add_reference :degree_of_specialties, :doctor, foreign_key: true
  end
end
