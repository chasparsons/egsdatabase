class CreateCptsAndOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :cpts_operations, id: false do |t|
      t.belongs_to :cpt, index: true
      t.belongs_to :operation, index: true
    end
  end
end