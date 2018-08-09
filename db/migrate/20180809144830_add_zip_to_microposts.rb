class AddZipToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :zip, :string
  end
end
