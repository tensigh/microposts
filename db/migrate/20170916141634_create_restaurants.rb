class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restName 
      t.string :restWebsite
      t.string :prodName 
      t.string :prodPrice
      t.decimal :prodRating
      t.text :restComments

      t.timestamps null: false
    end
  end
end
