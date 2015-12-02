class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :screen_name, :text
    add_column :users, :region, :text
    add_column :users, :phone_number, :text
  end
end
