class CreateOpcodes < ActiveRecord::Migration[5.0]
  def change
    create_table :opcodes do |t|
      t.references :operation, foreign_key: true
      t.references :cpt_codes, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
