class AddStateToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :state, :string
  end
end
