class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.string :description
      t.string :image
      t.string :condition
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
