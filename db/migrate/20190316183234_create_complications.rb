class CreateComplications < ActiveRecord::Migration[5.0]
  def change
    create_table :complications do |t|
      t.string :title
      t.integer :area
      t.integer :severity
      t.text :comment
      t.references :operation, foreign_key: true

      t.timestamps
    end
  end
end
