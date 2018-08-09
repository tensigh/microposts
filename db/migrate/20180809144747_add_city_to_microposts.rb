class AddCityToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :city, :string
  end
end
