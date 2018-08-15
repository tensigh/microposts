class AddItemsToMicroposts < ActiveRecord::Migration
  def change
     add_column :microposts, :productname, :string
     add_column :microposts, :productprice, :decimal
     add_column :microposts, :rating, :decimal
  end
end
