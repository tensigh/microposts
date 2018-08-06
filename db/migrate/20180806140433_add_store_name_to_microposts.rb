class AddStoreNameToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :storename, :string
  end
end
