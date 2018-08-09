class AddWebsiteToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :website, :string
  end
end
