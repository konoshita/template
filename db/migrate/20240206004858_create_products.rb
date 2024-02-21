class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :oder, null: false, foreign_key: true
      t.string :name, null: false
      t.string :location, null: false
      t.string :kind, null: false
      t.string :level, null: false
      t.string :volume, null: false

      t.timestamps
    end
  end
end
