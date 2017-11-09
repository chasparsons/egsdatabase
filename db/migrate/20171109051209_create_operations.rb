class CreateOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :operations do |t|
      t.date :or_date
      t.references :surgeon, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
