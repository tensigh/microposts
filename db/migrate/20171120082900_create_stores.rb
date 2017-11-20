class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_address
      t.string :store_phone
      t.string :store_website
      t.string :store_prod_name
      t.decimal :store_prod_price
      t.decimal :store_prod_rating
      t.text :store_comments

      t.timestamps null: false
    end
  end
end
