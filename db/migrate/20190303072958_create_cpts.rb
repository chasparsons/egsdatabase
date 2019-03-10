class CreateCpts < ActiveRecord::Migration[5.0]
  def change
    create_table :cpts do |t|
      t.string :category
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
