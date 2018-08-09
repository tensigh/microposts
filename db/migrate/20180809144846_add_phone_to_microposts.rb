class AddPhoneToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :phone, :string
  end
end
