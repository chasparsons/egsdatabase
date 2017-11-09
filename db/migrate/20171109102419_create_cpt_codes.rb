class CreateCptCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :cpt_codes do |t|
      t.string :cats
      t.string :mouse
      t.string :description

      t.timestamps
    end
  end
end
