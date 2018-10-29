class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :quantity
      t.datetime :available_from
      t.datetime :available_until
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
