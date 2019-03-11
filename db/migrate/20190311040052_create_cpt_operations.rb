class CreateCptOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :cpt_operations do |t|
      t.integer :cpt_id, index: true
      t.integer :operation_id, index: true
      t.integer :order

      t.timestamps
    end
  end
end
