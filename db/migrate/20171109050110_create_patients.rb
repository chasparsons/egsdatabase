class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.string :mrn
      t.date :dob

      t.timestamps
    end
  end
end
