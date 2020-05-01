class CreateDegreeOfSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :degree_of_specialties do |t|
      t.string :name

      t.timestamps
    end
  end
end
