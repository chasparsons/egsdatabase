class CreateOpCodeLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :op_code_links do |t|
      t.references :cpt_code, foreign_key: true
      t.references :operation, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
